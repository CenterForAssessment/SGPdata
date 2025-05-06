\name{sgptData_LONG}
\alias{sgptData_LONG}
\docType{data}
\title{Longitudinal Student Assessment Data in LONG format with DATE for SGPt analyses.}
\description{
A dataset comprising a subset of 3 years (and time periods) of interim assessment early literacy, reading and mathematics data suitable for time dependent student growth percentile (SGPt)
and percentile growth projection/trajectory analyses. The dataset is in LONG format with each record representing a unique student, by 
year/time period by content area combination. The example data is used in examples and illustrations in the enclosed documentation to show how SGPts can be operationalized
across years with the results being used to produce a variety of high quality visualizations both at the aggregate (e.g., school) and individual level.
}
\format{
  A data frame of student level observations for five years and two content areas for the following variables.
  \describe{
    \item{\code{COUNTRY}}{Variable indicating the COUNTRY associated with test record.}
    \item{\code{STATE}}{State associated with the test record.}
    \item{\code{VALID_CASE}}{VALID_CASE variable.}
    \item{\code{CONTENT_AREA}}{Variable indicating content area associated with test record.}
    \item{\code{YEAR}}{Variable indicating the year associated with the test record.}
    \item{\code{DATE}}{Variable indicating the year associated with the test record: Must be in YYYY-MM-DD format.}
    \item{\code{ID}}{Unique student identifier associated with test record.}
    \item{\code{GRADE}}{Variable indicating the grade associated with the test record.}
    \item{\code{SCALE_SCORE}}{Variable providing the scale score associated with the test record.}
    \item{\code{SCALE_SCORE_RASCH}}{Variable providing the Rasch score associated with the test record.}
    \item{\code{SCALE_SCORE_CSEM}}{Variable indicating the standard error of measurement associated with the scale score.}
    \item{\code{SCALE_SCORE_RASCH_CSEM}}{Variable indicating the standard error of measurement associated with the Rasch score.}
    \item{\code{ACHIEVEMENT_LEVEL}}{Variable indicating the achievement level associated with the scale score.}
  }
}

\seealso{\code{\link{sgpData_LONG}}}

\source{Anonymized student level interim assessment data in LONG format}
\keyword{datasets}
