\name{sgpData_LONG_COVID}
\alias{sgpData_LONG_COVID}
\docType{data}
\title{Longitudinal Student Assessment Data in LONG format with COVID-19 2020 interruption}
\description{
A dataset comprising a subset of seven years of state assessment ELA and mathematics data across an 8 year span suitable for student growth percentile (SGP)
and percentile growth projection/trajectory analyses. The dataset is missing 2020 data to help users model COVID related interuptions to student growth.
The dataset is in LONG format with each record representing a unique student, by year by content area combination. The example data is used in examples and 
illustration in the enclosed documentation to show how SGPs can be operationalized across years with the results being used to produce a variety of high quality visualizations 
both at the aggregate (e.g., school) and individual level.
}
\format{
  A data frame of student level observations for seven years (across an 8 year span) and two content areas for the following variables.
  \describe{
    \item{\code{VALID_CASE}}{Indicator of whether the case is valid or invalid}
    \item{\code{CONTENT_AREA}}{Content area for student observation (ELA or Mathematics)}
    \item{\code{YEAR}}{Year for student observation}
    \item{\code{ID}}{Unique Student Identification Number}
    \item{\code{GRADE}}{Grade level of student observation}
    \item{\code{SCALE_SCORE}}{Student Scale Score}
    \item{\code{ACHIEVEMENT_LEVEL}}{Achievement level associated with student scale score}
    \item{\code{ETHNICITY}}{Student ethnicity}
    \item{\code{FREE_REDUCED_LUNCH_STATUS}}{Student free/reduced lunch status}
    \item{\code{ELL_STATUS}}{Student English Language Learner status}
    \item{\code{SPECIAL_EDUCATION_STATUS}}{Student Individual Education Plan status}
    \item{\code{GENDER}}{Student gender}
    \item{\code{SCHOOL_NUMBER}}{School number associated with student record}
    \item{\code{SCHOOL_NAME}}{School name associated with school number and student record}
    \item{\code{DISTRICT_NUMBER}}{District number associated with student record}
    \item{\code{DISTRICT_NAME}}{District name associated with school number and student record}
  }
}

\note{All datasets used with \code{studentGrowthPercentiles} and \code{studentGrowthProjections} must be specifically formatted as \emph{wide} format files. The first 
variable/column is the student ID variable. The next set of columns provide the grade of the student across all the years provided in the dataset (possibly missing). 
The last set of columns provide the scales scores of the student in the respective grades. Operational users of this package are advised to use data formatted similar to 
the sgpData_LONG_COVID with the higher level functions \code{prepareSGP}, \code{analyzeSGP}, \code{combineSGP}, \code{summarizeSGP}, \code{visualizeSGP}, and \code{outputSGP}} 


\seealso{\code{\link{sgpData_LONG}}}

\source{Anonymized student level state assessment data in LONG format}
\keyword{datasets}
