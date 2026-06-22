# create a `gtsummary` table from a survey design object

create a `gtsummary` table from a survey design object

## Usage

``` r
create_survey_summary_table(
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
  numeric_summary_type = c("mean", "sum")
)
```

## Arguments

- data:

  a survey design object created via the survey package

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

## Value

a gtsummary object that renders across all formats natively
