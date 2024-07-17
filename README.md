SGPdata
=======


[![R-CMD-check](https://github.com/CenterForAssessment/SGPdata/workflows/R-CMD-check/badge.svg)](https://github.com/CenterForAssessment/SGPdata/actions)
[![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/centerforassessment/SGPdata?branch=master&svg=true)](https://ci.appveyor.com/project/centerforassessment/SGPdata)
[![CRAN_Status_Badge](https://www.r-pkg.org/badges/version/SGPdata)](https://cran.r-project.org/package=SGPdata)
[![Development Version](https://img.shields.io/badge/devel-28.0--0.0-brightgreen.svg)](https://github.com/CenterForAssessment/SGPdata)
[![Rstudio mirror downloads](https://cranlogs.r-pkg.org/badges/grand-total/SGPdata)](https://github.com/metacran/cranlogs.app)
[![License](https://img.shields.io/badge/license-GPL%203-brightgreen.svg?style=flat)](https://github.com/CenterForAssessment/SGPdata/blob/master/LICENSE.md)
[![Join the chat at https://gitter.im/CenterForAssessment/SGPdata](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/CenterForAssessment/SGPdata?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)


# Overview

The **SGPdata** package contains four exemplar data sets, `sgpData`,  `sgpData_LONG`, `sgptData_LONG` and `sgpData_INSTRUCTOR_NUMBER`
utilized by the [SGP Package](https://CenterForAssessment.github.io/SGP/) as exemplars for users to set up their own data for Student Growth Percentile (SGP) analyses.
The data set `sgpData` is a WIDE formatted data set whereas the data sets `sgpData_LONG` and `sgptData_LONG` are LONG formatted data sets
for fixed-time and time-dependent analyses, respectively. `sgpData_INSTRUCTOR_NUMBER` is a student-instructor look up table allowing for the production of
teacher level summaries. Use WIDE data sets with the lower level functions
[studentGrowthPercentiles](https://github.com/CenterForAssessment/SGP/blob/master/R/studentGrowthPercentiles.R) and
[studentGrowthProjections](https://github.com/CenterForAssessment/SGP/blob/master/R/studentGrowthProjections.R) but for operational
analyses use LONG formatted data.


# Installation

## From [CRAN](https://CRAN.R-project.org/package=SGPdata)

To install the latest stable release of **SGPdata** from [CRAN](https://CRAN.R-project.org/package=SGPdata)

```R
> install.packages("SGPdata")
```

## From [Github](https://github.com/CenterForAssessment/SGPdata/)

To install the development release of **SGPdata** from [GitHub](https://github.com/CenterForAssessment/SGPdata/):

```R
> devtools::install_github("CenterForAssessment/SGPdata")
```

The package is automatically installed when one installs the [SGP](https://github.com/CenterForAssessment/SGP/) package.


# Resources

* [SGP GitHub Pages](https://sgp.io)
* [SGPdata GitHub Pages](https://CenterForAssessment.github.io/SGPdata)
* [CRAN Repo](https://CRAN.R-project.org/package=SGPdata)


# Usage

```R
> head(sgpData)
       ID GRADE_2016 GRADE_2017 GRADE_2018 GRADE_2019 GRADE_2020 SS_2016 SS_2017 SS_2018 SS_2019 SS_2020
1 1000185         NA         NA         NA         NA          7      NA      NA      NA      NA     520
2 1000486          3          4          5          6          7     524     548     607     592     656
3 1000710          8         NA         NA         NA         NA     713      NA      NA      NA      NA
4 1000715         NA         NA          4          5          6      NA      NA     469     492     551
5 1000803         NA          5         NA         NA         NA      NA     558      NA      NA      NA
6 1000957          5          6          7          8         NA     651     660     666     663      NA
```

```R
> names(sgpData_LONG)
 [1] "VALID_CASE"                         "CONTENT_AREA"                       "YEAR"
 [4] "ID"                                 "LAST_NAME"                          "FIRST_NAME"
 [7] "GRADE"                              "SCALE_SCORE"                        "ACHIEVEMENT_LEVEL"
[10] "GENDER"                             "ETHNICITY"                          "FREE_REDUCED_LUNCH_STATUS"
[13] "ELL_STATUS"                         "IEP_STATUS"                         "GIFTED_AND_TALENTED_PROGRAM_STATUS"
[16] "SCHOOL_NUMBER"                      "SCHOOL_NAME"                        "EMH_LEVEL"
[19] "DISTRICT_NUMBER"                    "DISTRICT_NAME"                      "SCHOOL_ENROLLMENT_STATUS"
[22] "DISTRICT_ENROLLMENT_STATUS"         "STATE_ENROLLMENT_STATUS"
```


# Contributors

The **SGPdata** Package is crafted with :heart: by:

* [Damian Betebenner](https://github.com/dbetebenner)
* [Adam R. Van Iwaarden](https://github.com/adamvi)
* [Ben Domingue](https://github.com/ben-domingue)

We love feedback and are happy to answer questions.
