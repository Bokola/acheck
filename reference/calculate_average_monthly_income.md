# Calculate Total Monthly Income Vector

Evaluates multiple income sources using case-insensitive column matching
and returns a row-wise sum vector with implicit missing value treatment.

## Usage

``` r
calculate_average_monthly_income(
  data,
  income_patterns = c("IncCasual_Labor_calc", "IncSalary_calc",
    "IncGovt_assistance_calc", "IncRemittances_calc", "IncFamily_friends_calc",
    "IncHumanitarian_assistance_calc", "other_sources_calc",
    "IncAgriculture_pasturefarming_calc", "IncFishing_calc",
    "IncAgriculture_cropfarming_calc", "IncAgriculture_livestockeeping_calc",
    "IncsaleHumanitarian_assistance_calc", "Incself_employment_calc")
)
```

## Arguments

- data:

  A data frame containing income source columns.

- income_patterns:

  Character vector of column name identifiers to match.

## Value

A numeric vector representing the total monthly income for each row.
