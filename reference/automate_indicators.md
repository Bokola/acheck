# Automate binary indicator variable creation

This function dynamically scans input columns, handles missing data
structures, cleans raw count variables, and generates binary 0/1
indicators based on underlying numeric and character type properties,
preserving the original name.

## Usage

``` r
automate_indicators(df, cols)
```

## Arguments

- df:

  A dataframe or tibble object.

- cols:

  A character vector specifying the target column names to process.

## Value

A modified dataframe with updated raw counts and appended indicator
columns.
