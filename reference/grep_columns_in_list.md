# grep column names matching a pattern across a list of dataframes

grep column names matching a pattern across a list of dataframes

## Usage

``` r
grep_columns_in_list(df_list, pattern, ignore_case = TRUE)
```

## Arguments

- df_list:

  named list of dataframes to scan

- pattern:

  character string or regex pattern to search for

- ignore_case:

  logical. whether the search should be case-insensitive

## Value

a named list showing only the matched column names for each dataframe
