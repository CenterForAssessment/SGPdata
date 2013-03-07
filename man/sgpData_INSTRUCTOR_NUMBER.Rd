\name{sgpData_INSTRUCTOR_NUMBER}
\alias{sgpData_INSTRUCTOR_NUMBER}
\docType{data}
\title{Lookup table associating INSTRUCTOR_NUMBER with student ID by YEAR and CONTENT_AREA}
\description{
A lookup table comprising student IDs associated with INSTRUCTOR_NUMBERa subset of five years of state assessment reading and mathematics data suitable for student growth percentile
and percentile growth projection/trajectory analyses. The dataset is in LONG format with each record representing a unique teacher by student by 
year by content area combination.
}
\usage{data(sgpData_INSTRUCTOR_NUMBER)}
\format{
  A data frame of student level observations for five years and two content areas for the following variables.
  \describe{
    \item{\code{ID}}{Unique Student Identification Number}
    \item{\code{CONTENT_AREA}}{Content area for student/teacher record (Reading or Mathematics)}
    \item{\code{YEAR}}{Year for student/teacher record}
    \item{\code{INSTRUCTOR_NUMBER}}{Unique instructor number identifier}
    \item{\code{INSTRUCTOR_LAST_NAME}}{Instructor last name}
    \item{\code{INSTRUCTOR_FIRST_NAME}}{Instructor first name}
    \item{\code{INSTRUCTOR_WEIGHT}}{Proportional weight associated with student/teacher record}
    \item{\code{INSTRUCTOR_ENROLLMENT_STATUS}}{Indicator of full enrollment status of student with teacher}
  }
}

\seealso{\code{\link{sgpData_LONG}}}

\source{Anonymized student/teacher lookup table in LONG format}
\keyword{datasets}
