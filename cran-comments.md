## Release summary

This is an update from 28.0-0.0 to 29.0-0.0. It extends the data sets to the 2024_2025 year, adds tests that pin every data set, moves documentation to roxygen2, removes the `pkgsearch` and `crayon` dependencies (the startup message now uses `cli`, is interactive-only, waits at most two seconds and can be switched off) and requires R >= 4.1. The source tarball is about 7 MB because it is a data package; earlier releases were of similar size.

## Test environments

* local macOS (aarch64), R release: `R CMD check --as-cran`
* GitHub Actions: ubuntu-latest (release, oldrel-1, devel), macos-latest (release), windows-latest (release)
* win-builder (release, devel): to be run before submission

## R CMD check results

0 errors | 0 warnings | 0 notes

## Reverse dependencies

The only reverse dependency, SGP, was checked against this version with `R CMD check`: no new problems.
