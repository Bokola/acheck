# 📦 ACTED Data Helper Functions

- [acheck](#acheck)
  - [Installation](#installation)
  - [Basic Examples](#basic-examples)
  - [Core Functions Summary](#core-functions-summary)
  - [👨‍💻 Author Notes](#man_technologist-author-notes)

# acheck

The goal of `acheck` is to streamline data verification, cleaning,
sampling, and reporting workflows.

## Installation

You can install the development version of `acheck` like so:

``` r

# install.packages("devtools")
pak::pkg_install("bokola/acheck")
```

## Basic Examples

``` r

library(acheck)

# clean string inputs safely
clean_string("  Nachola124! ")
#> [1] "nachola124"

# clean phone numbers by standardizing county codes
df_phones <- data.frame(telephone_number = c("712345678", "0712345678"))
clean_phone_number(df_phones, col = "telephone_number")
#>   telephone_number
#> 1     254712345678
#> 2     254712345678

# categorize numeric inputs
cut_numeric(c(1, 5, 12, 19, 25), breaks = c(-Inf, 18, Inf), labels = c("<18", ">=18"))
#> [1] <18  <18  <18  >=18 >=18
#> Levels: <18 >=18
```

## Core Functions Summary

| Function | Description |
|----|----|
| [`format_num()`](https://bokola.github.io/acheck/reference/format_num.md) | Formats numeric vectors using `gtsummary` styles. |
| [`add_gt_to_word()`](https://bokola.github.io/acheck/reference/add_gt_to_word.md) | Appends `gtsummary` objects directly into Word documents. |
| [`clean_username()`](https://bokola.github.io/acheck/reference/clean_username.md) | Standardizes string formats to clean title case. |
| [`export_list_to_word()`](https://bokola.github.io/acheck/reference/export_list_to_word.md) | Exports a list of data frames or tables to a Word file. |
| [`create_summary_table()`](https://bokola.github.io/acheck/reference/create_summary_table.md) | Builds customizable `gtsummary` tables. |
| [`create_survey_summary_table()`](https://bokola.github.io/acheck/reference/create_survey_summary_table.md) | Generates summary tables for weighted survey design objects. |
| [`create_listing_table()`](https://bokola.github.io/acheck/reference/create_listing_table.md) | Creates formatted record listings with `gtreg`. |
| [`clean_string()`](https://bokola.github.io/acheck/reference/clean_string.md) | Converts strings to lowercase and strips non-alphanumeric characters. |
| [`clean_phone_number()`](https://bokola.github.io/acheck/reference/clean_phone_number.md) | Normalizes Kenyan phone numbers by prepending `254`. |
| [`process_payroll()`](https://bokola.github.io/acheck/reference/process_payroll.md) | Runs comprehensive cleaning pipelines on payroll data frames. |
| [`clean_camp()`](https://bokola.github.io/acheck/reference/clean_camp.md) | Recodes beneficiary location labels into standardized refugee camps. |
| [`get_group_cols()`](https://bokola.github.io/acheck/reference/get_group_cols.md) | Extracts variable names from data dictionaries by positional index. |
| [`check_esr_registrations()`](https://bokola.github.io/acheck/reference/check_esr_registrations.md) | Checks for duplicate household entries across dataset pairs. |
| [`get_standard_villages()`](https://bokola.github.io/acheck/reference/get_standard_villages.md) | Splits and standardizes multi-village entries. |
| [`find_extra_agency_records()`](https://bokola.github.io/acheck/reference/find_extra_agency_records.md) | Identifies unmatched audit records between datasets. |
| [`grep_columns_in_list()`](https://bokola.github.io/acheck/reference/grep_columns_in_list.md) | Searches for matching column names across lists of data frames. |
| [`pull_kobo_data()`](https://bokola.github.io/acheck/reference/pull_kobo_data.md) | Fetches survey submissions directly from KoboToolbox API. |
| [`pull_kobo_data_mpca()`](https://bokola.github.io/acheck/reference/pull_kobo_data_mpca.md) | Downloads and aligns complex multi-version Kobo dataset structures. |
| [`clean_kobo_excel()`](https://bokola.github.io/acheck/reference/clean_kobo_excel.md) | Normalizes manual Excel exports to match API formatting standards. |
| [`cut_numeric()`](https://bokola.github.io/acheck/reference/cut_numeric.md) | Bins numeric vectors into labeled factor categories. |
| [`export_to_excel_formatted()`](https://bokola.github.io/acheck/reference/export_to_excel_formatted.md) | Writes summary objects to Excel with custom formatting rules. |
| [`export_to_excel_appended()`](https://bokola.github.io/acheck/reference/export_to_excel_appended.md) | Appends new worksheets safely to existing Excel workbooks. |
| [`get_duplicates()`](https://bokola.github.io/acheck/reference/get_duplicates.md) | Returns duplicate record instances based on key variables. |
| [`get_distinct()`](https://bokola.github.io/acheck/reference/get_distinct.md) | Deduplicates records based on phone and name variations. |
| [`plot_bar()`](https://bokola.github.io/acheck/reference/plot_bar.md) | Generates standard summary bar charts using `ggplot2`. |
| [`plot_bar_top_n()`](https://bokola.github.io/acheck/reference/plot_bar_top_n.md) | Plots frequency distributions filtered to top $`N`$ categories. |
| [`plot_age_gender()`](https://bokola.github.io/acheck/reference/plot_age_gender.md) | Builds age-gender population pyramids using `patchwork`. |
| [`patchwork_grid()`](https://bokola.github.io/acheck/reference/patchwork_grid.md) | Arranges multiple plots into structured grid layouts. |
| [`add_custom_total()`](https://bokola.github.io/acheck/reference/add_custom_total.md) | Calculates custom summary aggregate rows for data frames. |
| [`collapse_villages()`](https://bokola.github.io/acheck/reference/collapse_villages.md) | Merges shared target rows while concatenating village labels. |
| [`get_partial_matches()`](https://bokola.github.io/acheck/reference/get_partial_matches.md) | Detects approximate string inclusion between two variables. |
| [`get_partial_matches_extend()`](https://bokola.github.io/acheck/reference/get_partial_matches_extend.md) | Maps the best string match between data frames using Jaro-Winkler distances. |
| [`get_pii()`](https://bokola.github.io/acheck/reference/get_pii.md) | Isolates personally identifiable information from datasets. |
| [`write_list_to_excel()`](https://bokola.github.io/acheck/reference/write_list_to_excel.md) | Writes a list of data frames into a single Excel workbook. |
| [`flatten_dm_by_names()`](https://bokola.github.io/acheck/reference/flatten_dm_by_names.md) | Extracts and flattens relational data models (`dm`) into data frame lists. |
| [`preprocess_reg()`](https://bokola.github.io/acheck/reference/preprocess_reg.md) | Runs complete pre-processing logic for registration data. |
| [`preprocess()`](https://bokola.github.io/acheck/reference/preprocess.md) | Standardizes demographic variables, labels, and categories. |
| [`slice_reg()`](https://bokola.github.io/acheck/reference/slice_reg.md) | Filters registration records based on target date boundaries. |
| [`get_edit_data()`](https://bokola.github.io/acheck/reference/get_edit_data.md) | Imports and prepares partner data modification files. |
| [`draw_pps_sample()`](https://bokola.github.io/acheck/reference/draw_pps_sample.md) | Draws a Probability Proportional to Size (PPS) household sample. |
| [`draw_pps_hamilton()`](https://bokola.github.io/acheck/reference/draw_pps_hamilton.md) | Performs PPS sampling using the Hamilton largest-remainder method. |
| [`draw_strs_sample()`](https://bokola.github.io/acheck/reference/draw_strs_sample.md) | Draws a Stratified Simple Random Sample across strata. |
| [`draw_cluster_sample()`](https://bokola.github.io/acheck/reference/draw_cluster_sample.md) | Performs two-stage cluster random sampling across villages. |
| [`draw_systematic_across_villages()`](https://bokola.github.io/acheck/reference/draw_systematic_across_villages.md) | Executes systematic random sampling across ordered clusters. |

## 👨‍💻 Author Notes

Designed for **humanitarian data workflows**, **Kobo pipelines**,
**beneficiary validation**, and **report automation**.
