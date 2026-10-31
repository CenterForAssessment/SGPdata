# data-raw

This folder holds what is needed to check the exemplar data sets in `data/`, and a record of how they are maintained. It is not part of the built package.

## The data sets

| Object | Rows | What it is |
|:--|--:|:--|
| `sgpData` | 79,931 | Wide format: `ID`, then `GRADE_<year>` columns, then `SS_<year>` columns. Reading, five years. |
| `sgpData_LONG` | 368,301 | Long format, ELA/Reading and Mathematics, five years. |
| `sgpData_LONG_COVID` | 583,913 | Long format with 2020 missing, to model the COVID-19 interruption. |
| `sgptData_LONG` | 44,212 | Long format with a `DATE`, nine year/window periods, for time dependent analyses. |
| `sgpData_INSTRUCTOR_NUMBER` | 496,688 | Student-instructor lookup by year and content area. |

All are anonymised, and all are `data.table`s.

## What is not here

The scripts that derive these data from their source files are **not in this repository**, and the source data is not public. Each annual release moves the years forward by one (the NEWS entries "Updating YEAR to ..."), and the objects are re-saved to `data/` with `xz` compression. If you rebuild the data, put the script in this folder so that the next person can.

## Guarding against accidental change

`fingerprint.R` summarises each data set in a way that does not depend on the R version or platform: its shape, the name and class of every column, and per column the number of missing values and a checksum. The result is stored in `tests/testthat/golden-fingerprints.R`, and `tests/testthat/test-data.R` fails if a data set no longer matches.

After a **deliberate** change to the data:

```sh
Rscript data-raw/fingerprint.R
git diff tests/testthat/golden-fingerprints.R
```

Read the diff. A changed fingerprint is a changed data set, and it should be one you meant to make.

## Documentation

`R/data.R` documents each data set with roxygen2. `test-data.R` checks that the documented variables are exactly the columns of the data, so a column added or renamed in the data must be added or renamed there.
