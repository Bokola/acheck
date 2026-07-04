# Calculate Psychological Distress Domain Disability Indicator

Evaluates indicators for anxiety, depression, and a composite
psychological functional limitation flag using the Washington Group
Enhanced Short Set scoring matrix. The evaluation logic is
case-insensitive to handle text rendering inconsistencies.

## Usage

``` r
calculate_psychological_distress(
  data,
  anxiety_freq,
  anxiety_intens,
  depress_freq,
  depress_intens
)
```

## Arguments

- data:

  A data frame or tibble containing the survey responses.

- anxiety_freq:

  Character. The column name representing anxiety frequency (e.g.,
  "Daily", "Weekly", "Never").

- anxiety_intens:

  Character. The column name representing anxiety intensity (e.g., "A
  lot", "A little").

- depress_freq:

  Character. The column name representing depression frequency.

- depress_intens:

  Character. The column name representing depression intensity.

## Value

A data frame with three additional numeric columns:

- has_anxiety:

  Binary indicator (0 or 1) for anxiety limitation.

- has_depression:

  Binary indicator (0 or 1) for depression limitation.

- has_disability_psych:

  Composite binary indicator for the domain.

All indicators return `NA` if inputs contain non-responses like
"Refused" or "Don't know".

## Examples

``` r
survey_responses <- tibble::tibble(
  dis_anxiety = c("Daily", "Weekly", "Never", "Refused"),
  dis_anxiety_frequency = c("A lot", "A little", "A little", "A lot"),
  dis_depression = c("Never", "Weekly", "Daily", "Don't know"),
  dis_anxiety_depression = c("A little", "A lot", "Somewhere in between", "A lot")
)

processed_data <- calculate_psychological_distress(
  data = survey_responses,
  anxiety_freq = "dis_anxiety",
  anxiety_intens = "dis_anxiety_frequency",
  depress_freq = "dis_depression",
  depress_intens = "dis_anxiety_depression"
)
```
