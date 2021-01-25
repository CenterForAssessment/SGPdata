\name{sgpData}
\alias{sgpData}
\docType{data}
\title{Longitudinal Student Assessment Data}
\description{
A dataset comprising a subset of five years of state assessment reading data suitable for student growth percentile
and percentile growth projection/trajectory analyses. The dataset is used in examples provided in the documentation
for the \code{studentGrowthPercentiles} and \cr
\code{studentGrowthProjections} functions, and serves as an exemplar for user construction 
of their own datasets for growth percentile analyses. 
}
\format{
  A data frame of student level observations for five years on the following variables.
  \describe{
    \item{\code{ID}}{Student ID}
    \item{\code{GRADE_2017}}{Student Grade Tested 2017, possibly missing}
    \item{\code{GRADE_2018}}{Student Grade Tested 2018, possibly missing}
    \item{\code{GRADE_2019}}{Student Grade Tested 2019, possibly missing}
    \item{\code{GRADE_2020}}{Student Grade Tested 2020, possibly missing}
    \item{\code{GRADE_2021}}{Student Grade Tested 2021, possibly missing}
    \item{\code{SS_2017}}{Student Scale Score 2017, possibly missing}
    \item{\code{SS_2018}}{Student Scale Score 2018, possibly missing}
    \item{\code{SS_2019}}{Student Scale Score 2019, possibly missing}
    \item{\code{SS_2020}}{Student Scale Score 2020, possibly missing}
    \item{\code{SS_2021}}{Student Scale Score 2021, possibly missing}
  }
}

\note{All datasets used with \code{studentGrowthPercentiles} and \code{studentGrowthProjections} must be specifically formatted as \emph{wide} format files. The first 
variable/column is the student ID variable. The next set of columns provide the grade of the student across all the years provided in the dataset (possibly missing). 
The last set of columns provide the scales scores of the student in the respective grades. Multi-year operational analyses benefit from putting data in long format.
See \code{sgpData_LONG} and associated documentation for a comprehensive account.} 


\seealso{\code{\link{sgpData_LONG}}}

\source{Anonymized student level state assessment data}
\keyword{datasets}
