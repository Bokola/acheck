# create a `gtsummary` table with optional top n category filtering

create a `gtsummary` table with optional top n category filtering

## Usage

``` r
create_summary_table(
  data,
  cols = dplyr::everything(),
  labels = list(),
  group_by = NULL,
  strata = NULL,
  percent_type = "column",
  dichotomous_as_continuous = FALSE,
  report_median = FALSE,
  label_characteristic = "Characteristic",
  round_continuous = FALSE,
  numeric_summary_type = c("mean", "sum"),
  calc_top_n = FALSE,
  top_n = 4,
  drop_na = TRUE
)
```

## Arguments

- data:

  dataframe

- cols:

  columns to include

- labels:

  character. labels

- group_by:

  character. grouping variable

- strata:

  character. stratifying variable

- percent_type:

  character. percents by row or column

- dichotomous_as_continuous:

  logical. treat binary 0/1 and likert scale columns as continuous

- report_median:

  logical. whether to include the median alongside the mean for
  continuous variables (ignored if numeric_summary_type is "sum")

- label_characteristic:

  character. custom header text for the characteristic column

- round_continuous:

  logical. whether to round continuous summaries to whole numbers
  instead of decimals

- numeric_summary_type:

  character. summary format for numeric columns, either "mean" or "sum"

- calc_top_n:

  logical. whether to filter categorical levels to only the top n most
  frequent values. defaults to FALSE

- top_n:

  integer. number of highest frequency categories to retain if
  calc_top_n is TRUE. defaults to 4

- drop_na:

  logical. whether to remove missing values from categorical columns.
  defaults to TRUE

## Value

a gtsummary object that renders across all formats natively
