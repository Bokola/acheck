# Filter and Match Payroll Records Against Registration Data by County

Subsets registration data for a specific county, removes duplicate IDs,
joins the results with payroll records, and flags rows where the payroll
name is a partial match inside the registration name string.

## Usage

``` r
match_county_records(registration, payroll, county_name = "Tana")
```

## Arguments

- registration:

  A data frame containing the primary registration benchmark records.

- payroll:

  A data frame containing the target payroll records to verify.

- county_name:

  Character string specifying the county name to filter on. Defaults to
  "Tana".

## Value

A data frame matching the layout of the payroll dataset, appended with
columns from the subsetted registration data and a logical `names_match`
flag.

## Examples

``` r
if (FALSE) match_county_records() # \dontrun{}
```
