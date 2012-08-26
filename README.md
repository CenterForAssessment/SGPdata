SGPdata 
===


Exemplar data sets for the SGP Package
-----------------------------------------------------------------------

The package SGPdata contains two data sets, sgpData and sgpData_LONG, utilized by the SGP Package as exemplars for users to set up their own data for SGP analyses.
The data set sgpData is a WIDE formatted data set whereas the data set sgpData_LONG is a LONG formatted data set. Wide data sets are used with the lower level functions
studentGrowthPercentiles and studentGrowthProjections but for operation purposes it is beneficial to have long formatted data.

* [Github Web site](https://github.com/StudentGrowthPercentiles/SGPdata/)
* [CRAN Web site](http://cran.r-project.org/package=SGPdata)

The package is automatically installed when one installs the [SGP](https://github.com/StudentGrowthPercentiles/SGP/) package.

To install the latest stable release from [CRAN](http://cran.r-project.org/package=SGPdata)
---------------------------

```R 
install.packages("SGPdata")
require(SGPdata)
```



Install latest development release from [Github](https://github.com/StudentGrowthPercentiles/SGPdata/)
----------------------------------------------

```R 
install.packages("devtools")
require(devtools)
install_github("SGPdata", "StudentGrowthPercentiles")
require(SGPdata)
```

To install from Github you might need: Windows: Rtools (http://cran.r-project.org/bin/windows/Rtools/), OS X: xcode (from the app store),
Linux: apt-get install r-base-dev (or similar)
