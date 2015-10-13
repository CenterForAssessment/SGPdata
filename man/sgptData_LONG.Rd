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
\usage{data(sgptData_LONG)}
\format{
  A data frame of student level observations for five years and two content areas for the following variables.
  \describe{
    \item{\code{COUNTRY}}{}
    \item{\code{STATE}}{}
    \item{\code{VALID_CASE}}{}
    \item{\code{CONTENT_AREA}}{}
    \item{\code{YEAR}}{}
    \item{\code{DATE}}{}
    \item{\code{ID}}{}
    \item{\code{GRADE}}{}
    \item{\code{SCALE_SCORE}}{}
    \item{\code{SEM}}{}
    \item{\code{OFFICIAL_WINDOW_SCORE}}{}
    \item{\code{ACHIEVEMENT_LEVEL}}{}
  }
}

\seealso{\code{\link{sgpData_LONG}}}

\source{Anonymized student level interim assessment data in LONG format}
\keyword{datasets}
