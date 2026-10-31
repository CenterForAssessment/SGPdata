#' Longitudinal student assessment data in WIDE format
#'
#' A subset of five years of anonymised state assessment reading data, suitable
#' for student growth percentile and percentile growth projection/trajectory
#' analyses. It is used in the examples for `studentGrowthPercentiles()` and
#' `studentGrowthProjections()` in the SGP package, and shows how to build your own
#' data set for growth percentile analyses.
#'
#' @format A `data.table` of student-level observations for five years with 11
#'   variables:
#'   \describe{
#'     \item{`ID`}{Student ID}
#'     \item{`GRADE_2021`}{Student Grade Tested 2021, possibly missing}
#'     \item{`GRADE_2022`}{Student Grade Tested 2022, possibly missing}
#'     \item{`GRADE_2023`}{Student Grade Tested 2023, possibly missing}
#'     \item{`GRADE_2024`}{Student Grade Tested 2024, possibly missing}
#'     \item{`GRADE_2025`}{Student Grade Tested 2025, possibly missing}
#'     \item{`SS_2021`}{Student Scale Score 2021, possibly missing}
#'     \item{`SS_2022`}{Student Scale Score 2022, possibly missing}
#'     \item{`SS_2023`}{Student Scale Score 2023, possibly missing}
#'     \item{`SS_2024`}{Student Scale Score 2024, possibly missing}
#'     \item{`SS_2025`}{Student Scale Score 2025, possibly missing}
#'   }
#'
#' @note Data used with `studentGrowthPercentiles()` and `studentGrowthProjections()`
#'   must be in *wide* format. The first column is the student ID. The next set of
#'   columns give the student's grade in each year (possibly missing). The last set
#'   give the scale scores for those grades. Multi-year operational analyses are
#'   easier with long format; see [sgpData_LONG].
#'
#' @source Anonymised student level state assessment data.
#' @seealso [sgpData_LONG]
#' @examples
#' head(sgpData)
"sgpData"

#' Longitudinal student assessment data in LONG format
#'
#' A subset of five years of anonymised state assessment reading and mathematics
#' data, suitable for student growth percentile (SGP) and percentile growth
#' projection/trajectory analyses. Each record is one student in one year in one
#' content area. The data illustrate, throughout the documentation, how SGPs can
#' be used across years to produce visualisations at the aggregate (for example,
#' school) and individual level.
#'
#' @format A `data.table` of student-level observations for five years and two
#'   content areas with 23 variables:
#'   \describe{
#'     \item{`VALID_CASE`}{Indicator of whether the case is valid or invalid}
#'     \item{`CONTENT_AREA`}{Content area for student observation (Reading or Mathematics)}
#'     \item{`YEAR`}{Year for student observation}
#'     \item{`ID`}{Unique Student Identification Number}
#'     \item{`LAST_NAME`}{Student last name}
#'     \item{`FIRST_NAME`}{Student first name}
#'     \item{`GRADE`}{Grade level of student observation}
#'     \item{`SCALE_SCORE`}{Student Scale Score}
#'     \item{`ACHIEVEMENT_LEVEL`}{Achievement level associated with student scale score}
#'     \item{`GENDER`}{Student gender}
#'     \item{`ETHNICITY`}{Student ethnicity}
#'     \item{`FREE_REDUCED_LUNCH_STATUS`}{Student free/reduced lunch status}
#'     \item{`ELL_STATUS`}{Student English Language Learner status}
#'     \item{`IEP_STATUS`}{Student Individual Education Plan status}
#'     \item{`GIFTED_AND_TALENTED_PROGRAM_STATUS`}{Student Gifted and Talented Program status}
#'     \item{`SCHOOL_NUMBER`}{School number associated with student record}
#'     \item{`SCHOOL_NAME`}{School name associated with school number and student record}
#'     \item{`EMH_LEVEL`}{Elementary, Middle, High school indicator for school attended}
#'     \item{`DISTRICT_NUMBER`}{District number associated with student record}
#'     \item{`DISTRICT_NAME`}{District name associated with school number and student record}
#'     \item{`SCHOOL_ENROLLMENT_STATUS`}{Indicator of full academic year student enrollment in school}
#'     \item{`DISTRICT_ENROLLMENT_STATUS`}{Indicator of full academic year student enrollment in district}
#'     \item{`STATE_ENROLLMENT_STATUS`}{Indicator of full academic year student enrollment in state}
#'   }
#'
#' @note Use long format like this with the higher level SGP functions
#'   `prepareSGP()`, `analyzeSGP()`, `combineSGP()`, `summarizeSGP()`,
#'   `visualizeSGP()` and `outputSGP()`. The lower level functions need wide format;
#'   see [sgpData].
#'
#' @source Anonymised student level state assessment data in LONG format.
#' @seealso [sgpData], [sgpData_LONG_COVID], [sgptData_LONG]
#' @examples
#' head(sgpData_LONG)
"sgpData_LONG"

#' Longitudinal student assessment data in LONG format with the 2020 COVID-19 interruption
#'
#' A subset of seven years of state assessment ELA and mathematics data across an
#' eight-year span, suitable for student growth percentile (SGP) and percentile
#' growth projection/trajectory analyses. The data are missing 2020, to help model
#' COVID-related interruptions to student growth. Each record is one student in one
#' year in one content area.
#'
#' @format A `data.table` of student-level observations for seven years (across an
#'   eight-year span) and two content areas with 17 variables:
#'   \describe{
#'     \item{`VALID_CASE`}{Indicator of whether the case is valid or invalid}
#'     \item{`CONTENT_AREA`}{Content area for student observation (ELA or Mathematics)}
#'     \item{`YEAR`}{Year for student observation}
#'     \item{`ID`}{Unique Student Identification Number}
#'     \item{`GRADE`}{Grade level of student observation}
#'     \item{`SCALE_SCORE`}{Student Scale Score}
#'     \item{`SCALE_SCORE_without_COVID_IMPACT`}{Student Scale Score without COVID impact. Original scale score}
#'     \item{`ACHIEVEMENT_LEVEL`}{Achievement level associated with student scale score}
#'     \item{`ETHNICITY`}{Student ethnicity}
#'     \item{`FREE_REDUCED_LUNCH_STATUS`}{Student free/reduced lunch status}
#'     \item{`ELL_STATUS`}{Student English Language Learner status}
#'     \item{`IEP_STATUS`}{Student Individual Education Plan status}
#'     \item{`GENDER`}{Student gender}
#'     \item{`SCHOOL_NUMBER`}{School number associated with student record}
#'     \item{`SCHOOL_NAME`}{School name associated with school number and student record}
#'     \item{`DISTRICT_NUMBER`}{District number associated with student record}
#'     \item{`DISTRICT_NAME`}{District name associated with school number and student record}
#'   }
#'
#' @note Use long format like this with the higher level SGP functions
#'   `prepareSGP()`, `analyzeSGP()`, `combineSGP()`, `summarizeSGP()`,
#'   `visualizeSGP()` and `outputSGP()`.
#'
#' @source Anonymised student level state assessment data in LONG format.
#' @seealso [sgpData_LONG]
#' @examples
#' head(sgpData_LONG_COVID)
"sgpData_LONG_COVID"

#' Longitudinal student assessment data in LONG format with DATE for SGPt analyses
#'
#' A subset of three years, with three testing windows each, of interim assessment
#' early literacy, reading and mathematics data, suitable for time dependent student
#' growth percentile (SGPt) and percentile growth projection/trajectory analyses.
#' Each record is one student in one year/window in one content area. The data are
#' used in examples to show how SGPt can be used across years to produce
#' visualisations at the aggregate (for example, school) and individual level.
#'
#' @format A `data.table` of student-level observations for nine year/window
#'   periods (three per year) and several content areas with 13 variables:
#'   \describe{
#'     \item{`VALID_CASE`}{Whether the case is valid or invalid}
#'     \item{`CONTENT_AREA`}{Content area associated with the test record}
#'     \item{`YEAR`}{Year and window associated with the test record, such as `2023_2024.2`}
#'     \item{`ID`}{Unique student identifier associated with the test record}
#'     \item{`GRADE`}{Grade associated with the test record}
#'     \item{`DATE`}{Date of the test record, a `Date`}
#'     \item{`SCALE_SCORE`}{Scale score associated with the test record}
#'     \item{`SCALE_SCORE_RASCH`}{Rasch score associated with the test record}
#'     \item{`SCALE_SCORE_CSEM`}{Standard error of measurement of the scale score}
#'     \item{`SCALE_SCORE_RASCH_CSEM`}{Standard error of measurement of the Rasch score}
#'     \item{`COUNTRY`}{Country associated with the test record}
#'     \item{`STATE`}{State associated with the test record}
#'     \item{`ACHIEVEMENT_LEVEL`}{Achievement level associated with the scale score}
#'   }
#'
#' @source Anonymised student level interim assessment data in LONG format.
#' @seealso [sgpData_LONG]
#' @examples
#' head(sgptData_LONG)
"sgptData_LONG"

#' Lookup table associating INSTRUCTOR_NUMBER with student ID by YEAR and CONTENT_AREA
#'
#' A lookup table that attaches an instructor to each student's test record for
#' five years of state assessment reading and mathematics data. It is in LONG format
#' with one record per teacher, student, year and content area. A teacher has many
#' students, and a student can have more than one teacher for a content area in a
#' year. Use it to produce teacher level aggregates.
#'
#' @format A `data.table` with 8 variables:
#'   \describe{
#'     \item{`ID`}{Unique Student Identification Number}
#'     \item{`CONTENT_AREA`}{Content area for student/teacher record (Reading or Mathematics)}
#'     \item{`YEAR`}{Year for student/teacher record}
#'     \item{`INSTRUCTOR_NUMBER`}{Unique instructor number identifier}
#'     \item{`INSTRUCTOR_LAST_NAME`}{Instructor last name}
#'     \item{`INSTRUCTOR_FIRST_NAME`}{Instructor first name}
#'     \item{`INSTRUCTOR_WEIGHT`}{Proportional weight associated with student/teacher record}
#'     \item{`INSTRUCTOR_ENROLLMENT_STATUS`}{Indicator of full enrollment status of student with teacher}
#'   }
#'
#' @source Anonymised student/teacher lookup table in LONG format.
#' @seealso [sgpData_LONG]
#' @examples
#' head(sgpData_INSTRUCTOR_NUMBER)
"sgpData_INSTRUCTOR_NUMBER"
