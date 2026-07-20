# calculate household hunger score and categorical scale

calculate household hunger score and categorical scale

## Usage

``` r
calculate_hunger_score(
  data,
  nofood_col = "hhsnofood",
  nofood_fr_col = "hhsnofood_fr",
  noteat_col = "hhsnoteat",
  noteat_fr_col = "hhsnoteat_fr",
  bedhung_col = "hhsbedhung",
  bedhung_fr_col = "hhsbedhung_fr"
)
```

## Arguments

- data:

  dataframe containing the food security survey responses

- nofood_col:

  character matching pattern for no food in house column

- nofood_fr_col:

  character matching pattern for frequency of no food

- noteat_col:

  character matching pattern for went to sleep hungry column

- noteat_fr_col:

  character matching pattern for frequency of went to sleep hungry

- bedhung_col:

  character matching pattern for went 24 hours without eating column

- bedhung_fr_col:

  character matching pattern for frequency of 24 hours without eating

## Value

an updated dataframe with columns 'hhs_score' and 'hhs_categorical'

## Examples

``` r
# 
# create dummy dataset
survey_df <- data.frame(
  hhsnofood = c("yes", "no", "yes"),
  hhsnofood_fr = c("sometimes", NA, "often"),
  hhsnoteat = c("no", "yes", "yes"),
  hhsnoteat_fr = c(NA, "rarely", "often"),
  hhsbedhung = c("no", "no", "yes"),
  hhsbedhung_fr = c(NA, NA, "sometimes"),
  stringsAsFactors = FALSE
)

hhs_results <- calculate_hunger_score(survey_df)
```
