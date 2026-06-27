# get a character vector of the top n levels of a categorical variable

get a character vector of the top n levels of a categorical variable

## Usage

``` r
get_top_n_levels(
  data = df_income,
  cat_var = "main_source_income",
  n = 4,
  drop_na = TRUE
)
```

## Arguments

- data:

  dataframe

- cat_var:

  character name or unquoted symbol of the categorical variable

- n:

  integer maximum number of levels to return. defaults to 10

- drop_na:

  logical indicate if missing values should be excluded. defaults to
  TRUE

## Value

a character vector of category names sorted in descending order

## Examples

``` r
# lower case comments without dots or dashes
survey_df <- data.frame(
  subcounty = 
  c("samburu_east", "samburu_east", "tana_river",
   "samburu_north", "tana_river", "tana_river")
)

top_levels <- get_top_n_levels(survey_df, subcounty, n = 2)
```
