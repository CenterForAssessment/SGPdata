sets <- c("sgpData", "sgpData_LONG", "sgpData_LONG_COVID", "sgptData_LONG", "sgpData_INSTRUCTOR_NUMBER")

# The fingerprint function and golden values come from data-raw/, which is not part
# of the installed or built package. Without it only the structural tests run.
fingerprint <- source_fingerprint()
golden_path <- test_path("golden-fingerprints.R")
if (file.exists(golden_path)) source(golden_path, local = TRUE)

test_that("every data set is a data.table", {
  for (nm in sets) {
    expect_s3_class(get(nm), "data.table")
  }
})

test_that("the package lists exactly the data sets it documents", {
  expect_setequal(data(package = "SGPdata")$results[, "Item"], sets)
})

test_that("every column is documented, and every documented column exists", {
  skip_on_cran()
  db <- tryCatch(tools::Rd_db("SGPdata"), error = function(e) NULL)
  skip_if(is.null(db) || length(db) == 0L, "Rd database not available (package not installed)")
  for (nm in sets) {
    rd <- paste(as.character(db[[paste0(nm, ".Rd")]]), collapse = "\n")
    documented <- regmatches(rd, gregexpr("(?<=\\\\item\\{\\\\code\\{)[^}]+", rd, perl = TRUE))[[1]]
    expect_setequal(documented, names(get(nm)))
  }
})

test_that("long data sets carry the variables the SGP functions require", {
  required <- c("VALID_CASE", "CONTENT_AREA", "YEAR", "ID", "SCALE_SCORE", "GRADE")
  for (nm in c("sgpData_LONG", "sgpData_LONG_COVID", "sgptData_LONG")) {
    expect_true(all(required %in% names(get(nm))), info = nm)
  }
  expect_true("ACHIEVEMENT_LEVEL" %in% names(sgpData_LONG))
})

test_that("sgpData is wide: ID, then grades, then scale scores", {
  nm <- names(sgpData)
  years <- sub("^GRADE_", "", grep("^GRADE_", nm, value = TRUE))
  expect_equal(nm, c("ID", paste0("GRADE_", years), paste0("SS_", years)))
  expect_false(anyDuplicated(sgpData$ID) > 0)
})

test_that("years agree across the data sets that share them", {
  expect_equal(sort(unique(sgpData_LONG$YEAR)), sort(unique(sgpData_INSTRUCTOR_NUMBER$YEAR)))
  expect_equal(sort(unique(sgpData_LONG_COVID$YEAR)), as.character(c(2016:2019, 2021:2023)))
  expect_false("2020" %in% sgpData_LONG_COVID$YEAR)
  expect_s3_class(sgptData_LONG$DATE, "Date")
})

test_that("each data set matches its fingerprint", {
  skip_if(is.null(fingerprint) || !exists("golden_fingerprints"), "data-raw/ not available")
  for (nm in sets) {
    got <- fingerprint(get(nm))
    want <- golden_fingerprints[[nm]]
    expect_equal(got$nrow, want$nrow, info = paste(nm, "rows"))
    expect_equal(names(got$columns), names(want$columns), info = paste(nm, "column names"))
    expect_equal(got, want, tolerance = 1e-9, info = nm)
  }
})

test_that("the fingerprint detects a change", {
  skip_if(is.null(fingerprint), "data-raw/ not available")
  original <- fingerprint(sgpData_LONG_COVID)
  shifted <- data.table::copy(sgpData_LONG_COVID)
  shifted$SCALE_SCORE[1] <- shifted$SCALE_SCORE[1] + 1000
  expect_false(isTRUE(all.equal(fingerprint(shifted), original, tolerance = 1e-9)))
  expect_false(isTRUE(all.equal(fingerprint(sgpData_LONG_COVID[-1]), original, tolerance = 1e-9)))
})
