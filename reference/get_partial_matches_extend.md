# find partial matches and map the single best-matching focal name onto dataframe 2

find partial matches and map the single best-matching focal name onto
dataframe 2

## Usage

``` r
get_partial_matches_extend(
  df1,
  df2,
  focal = "focal_name",
  beneficiary = "benef_name",
  min_shared_words = 2
)
```

## Arguments

- df1:

  dataframe containing the focal variable (source of matched names)

- df2:

  dataframe containing the beneficiary variable (target destination)

- focal:

  character name of the focal variable column in df1

- beneficiary:

  character name of the beneficiary variable column in df2

- min_shared_words:

  integer minimum number of unique words that must match to trigger a
  connection

## Value

dataframe 2 with an appended 'name_possible' column containing the
highest probability match from df1
