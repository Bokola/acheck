# Apply Data Cleaning Corrections Using an Embedded Cleaning Log

This function updates a main dataset using a correction data frame. It
applies standard cell corrections and handles row deletions last.
Deletions are processed using strict unique UUID matching if a true uuid
column is present, falling back to exact name matching combined with
multiple context validation columns if a general non-unique identifier
or name-only tracking is used.

## Usage

``` r
apply_corrections(
  data,
  id_var = "uuid",
  corrections,
  var_to_change_col = "var_to_change",
  correct_value_col = "correct_value",
  ben_name_col = "ben_name",
  context_cols = c("ben_id_number", "ward", "village")
)
```

## Arguments

- data:

  A data frame containing the main dataset to be cleaned.

- id_var:

  The bare or quoted column name representing the unique identifier.

- corrections:

  A data frame containing the corrections log along with the matching
  keys.

- var_to_change_col:

  Column name in `corrections` holding target names to change.

- correct_value_col:

  Column name in `corrections` holding updated values.

- ben_name_col:

  Column name in both datasets holding beneficiary names.

- context_cols:

  Optional character vector. Secondary column names present in both
  datasets (e.g., `c("ben_id_number", "ward", "village")`) used to build
  a composite key and avoid accidental collisions of identical or
  similar names.

## Value

A data frame matching the structure of `data`.
