# get duplicate rows, track the checked field, and subset down to designated columns via an argument

get duplicate rows, track the checked field, and subset down to
designated columns via an argument

## Usage

``` r
get_dupes_with_name(
  data,
  col = ben_name,
  cols_select = rlang::exprs(county, enum_egency, enum_name, ben_name, ben_id_number,
    reg_num, dup_col, uuid)
)
```

## Arguments

- data:

  a dataframe or tibble

- col:

  the unquoted column name to check for duplicates, defaults to ben_name

- cols_select:

  a list of unquoted column expressions to select, defaults to a
  predefined set

## Value

a filtered and pruned dataframe of duplicate rows
