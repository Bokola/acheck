# Identify Potential Beneficiary Name Matches From a Master Dataset

Compares a column of names in a flagged dataset against a column of
names in a master reference dataset using optimized vectorized string
distance matrices. If a potential match is identified within a specified
text edit threshold, the candidate name from the master dataset is
mapped into a new column named `name_possible`.

## Usage

``` r
find_name_matches(
  flagged_data,
  master_data,
  flagged_col = "ben_name",
  master_col = "ben_name",
  max_dist = 3
)
```

## Arguments

- flagged_data:

  A data frame containing the flagged records needing verification.

- master_data:

  A data frame containing the verified master benchmark records.

- flagged_col:

  The bare or quoted column name of the name column in `flagged_data`.
  Defaults to "ben_name".

- master_col:

  The bare or quoted column name of the name column in `master_data`.
  Defaults to "ben_name".

- max_dist:

  Integer specifying the maximum allowed string distance/edits to
  qualify as a match. Defaults to 3.

## Value

A data frame matching the structure of `flagged_data`, with an
additional `name_possible` character column containing the matched
master dataset name (or NA if no match is found).

## Examples

``` r
if (FALSE) { # \dontrun{
verified_df <- find_name_matches(bad_data, good_data, max_dist = 2)
} # }
```
