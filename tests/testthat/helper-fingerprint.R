# Same function as data-raw/fingerprint.R; kept in step by test-data.R.
source_fingerprint <- function() {
  candidates <- c(
    file.path("..", "..", "data-raw", "fingerprint.R"),
    file.path(testthat::test_path(), "..", "..", "data-raw", "fingerprint.R")
  )
  hit <- candidates[file.exists(candidates)]
  if (length(hit)) {
    env <- new.env()
    sys.source(hit[1], envir = env)
    env$fingerprint
  }
}
