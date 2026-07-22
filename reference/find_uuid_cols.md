# find columns containing uuid strings

find columns containing uuid strings

## Usage

``` r
find_uuid_cols(df, threshold = 0.8)
```

## Arguments

- df:

  dataframe

- threshold:

  numeric proportion of non-NA values that must match the uuid pattern
  to flag the column default is 0.8

## Value

character vector of column names matching the uuid pattern

## Examples

``` r
if (FALSE) find_uuid_cols(df) # \dontrun{}
```
