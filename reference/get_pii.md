# Get personally identifying columns

Get personally identifying columns

## Usage

``` r
get_pii(
  df = df_clean,
  vars = c("lat", "long", "name", "mobile", "gps", "phone", "enum_num$",
    "^(enum|reg|ben|proxy|sec)_.*(name|num|id)")
)
```

## Arguments

- df:

  dataframe

- vars:

  string of identifying columns

## Value

a list of 3 dataframes: identifying, de-identified, and original df

## Examples

``` r
if (FALSE) get_pii() # \dontrun{}
```
