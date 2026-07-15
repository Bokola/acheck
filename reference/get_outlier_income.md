# Split dataset by expenditure thresholds

Split dataset by expenditure thresholds

## Usage

``` r
get_outlier_income(df, threshold = 50000)
```

## Arguments

- df:

  A dataframe containing the target columns.

- threshold:

  The numeric ceiling limit for filtering. Default is 50000.

## Value

A list containing two dataframes: "clean_data" and "extreme_data".
