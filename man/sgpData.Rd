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
    \item{\code{GRADE_2014}}{Student Grade Tested 2013, possibly missing}
    \item{\code{GRADE_2015}}{Student Grade Tested 2014, possibly missing}
    \item{\code{GRADE_2016}}{Student Grade Tested 2015, possibly missing}
    \item{\code{GRADE_2017}}{Student Grade Tested 2016, possibly missing}
    \item{\code{GRADE_2018}}{Student Grade Tested 2017, possibly missing}
    \item{\code{SS_2014}}{Student Scale Score 2013, possibly missing}
    \item{\code{SS_2015}}{Student Scale Score 2014, possibly missing}
    \item{\code{SS_2016}}{Student Scale Score 2015, possibly missing}
    \item{\code{SS_2017}}{Student Scale Score 2016, possibly missing}
    \item{\code{SS_2018}}{Student Scale Score 2017, possibly missing}
  }
}

\note{All datasets used with \code{studentGrowthPercentiles} and \code{studentGrowthProjections} must be specifically formatted as \emph{wide} format files. The first 
variable/column is the student ID variable. The next set of columns provide the grade of the student across all the years provided in the dataset (possibly missing). 
The last set of columns provide the scales scores of the student in the respective grades. Multi-year operational analyses benefit from putting data in long format.
See \code{sgpData_LONG} and associated documentation for a comprehensive account.} 


\seealso{\code{\link{sgpData_LONG}}}

\source{Anonymized student level state assessment data}
\keyword{datasets}
