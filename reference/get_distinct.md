# get distinct beneficiaries on select variables

get distinct beneficiaries on select variables

## Usage

``` r
get_distinct(
  x,
  vars_to_check = c("benef_name", "ben_number"),
  phone_var = "ben_number",
  name_var = "benef_name"
)
```

## Arguments

- x:

  dataframe

- vars_to_check:

  character vector of columns to check

- phone_var:

  character vector of phone number column

- name_var:

  character vector of respondent name

## Value

dataframe

## Examples

``` r
if (FALSE) get_distinct() # \dontrun{}
```
