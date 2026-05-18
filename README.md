📦 UNOCHA Helper Functions
================

- [📦 UNOCHA Helper Functions
  Toolkit](#package-unocha-helper-functions-toolkit)
  - [🚀 Installation](#rocket-installation)
- [Reporting & Tables](#reporting--tables)
  - [`create_summary_table()`](#create_summary_table)
    - [Features](#features)
  - [`create_listing_table()`](#create_listing_table)
  - [`add_gt_to_word()`](#add_gt_to_word)
- [Data Cleaning](#data-cleaning)
  - [`clean_string()`](#clean_string)
  - [`clean_camp()`](#clean_camp)
  - [`cut_numeric()`](#cut_numeric)
- [Validation & Matching](#validation--matching)
  - [`check_esr_registrations()`](#check_esr_registrations)
  - [`get_duplicates()`](#get_duplicates)
  - [`get_distinct()`](#get_distinct)
  - [`get_partial_matches()`](#get_partial_matches)
- [Kobo Integration](#kobo-integration)
  - [`pull_kobo_data()`](#pull_kobo_data)
- [Exports](#exports)
  - [`export_to_excel_formatted()`](#export_to_excel_formatted)
  - [`export_to_excel_appended()`](#export_to_excel_appended)
  - [`export_list_to_word()`](#export_list_to_word)
  - [`write_list_to_excel()`](#write_list_to_excel)
- [Visualization](#visualization)
  - [`plot_bar()`](#plot_bar)
- [Utility Functions](#utility-functions)
  - [`collapse_villages()`](#collapse_villages)
  - [`add_custom_total()`](#add_custom_total)
  - [`get_standard_villages()`](#get_standard_villages)
- [Privacy & De‑Identification](#privacy--deidentification)
  - [`get_pii()`](#get_pii)
- [Dependencies](#dependencies)
  - [👨‍💻 Author Notes](#man_technologist-author-notes)

<style>
body {font-family: 'Segoe UI', sans-serif;}
h1,h2,h3 {color:#0066A1;}
pre {background:#f8f9fa; border-left:4px solid #0066A1;}
</style>

# 📦 UNOCHA Helper Functions Toolkit

A curated collection of reusable **R helper functions** for:

- 📊 Reporting & summaries (`gtsummary`, `flextable`, `officer`)
- 🧹 Data cleaning & standardization
- 🔍 Duplicate detection & QA
- 📈 Visualization
- 📁 Excel / Word exports
- 🔐 De‑identification / PII handling
- 🤖 KoboToolbox integration

------------------------------------------------------------------------

## 🚀 Installation

``` r
pak::pkg_install("bokola/acheck")
```

------------------------------------------------------------------------

# Reporting & Tables

## `create_summary_table()`

Generate publication‑ready summary tables.

``` r
create_summary_table(
  data = df,
  cols = c(age, sex),
  group_by = "partner"
)
```

### Features

✔ Stratified summaries  
✔ Grouped tables  
✔ Custom labels  
✔ Continuous + categorical support

------------------------------------------------------------------------

## `create_listing_table()`

Create clean record listings.

``` r
create_listing_table(df, cols = c(name, phone))
```

------------------------------------------------------------------------

## `add_gt_to_word()`

Export `gtsummary` outputs to Word.

``` r
doc <- officer::read_docx()

add_gt_to_word(
  doc,
  gt_obj = tbl,
  title = "Beneficiary Summary"
)
```

------------------------------------------------------------------------

# Data Cleaning

## `clean_string()`

Normalize text values.

Transforms:

- lowercase
- remove spaces
- remove punctuation
- keep alphanumerics

``` r
clean_string("Nachola-124")
```

Result:

``` r
"nachola124"
```

------------------------------------------------------------------------

## `clean_camp()`

Standardize camp names.

``` r
clean_camp(df, "ben_camp")
```

Handles:

- Nairobi
- Kakuma
- Daadab
- common misspellings / aliases

------------------------------------------------------------------------

## `cut_numeric()`

Convert numeric vectors into categories.

``` r
cut_numeric(age)
```

------------------------------------------------------------------------

# Validation & Matching

## `check_esr_registrations()`

Cross‑check registrations against ESR datasets using:

- IDs
- phone numbers
- names
- partial name combinations

``` r
check_esr_registrations(df_clean, df_esr)
```

------------------------------------------------------------------------

## `get_duplicates()`

Detect:

✔ Shared phones across different names  
✔ Shared names across different phones  
✔ Exact duplicate combinations

``` r
get_duplicates(df)
```

------------------------------------------------------------------------

## `get_distinct()`

Return cleaned non‑duplicate records.

``` r
get_distinct(df)
```

------------------------------------------------------------------------

## `get_partial_matches()`

Find partial string matches.

``` r
get_partial_matches(df)
```

Useful for QA and fuzzy beneficiary review.

------------------------------------------------------------------------

# Kobo Integration

## `pull_kobo_data()`

Pull live KoboToolbox project data.

``` r
pull_kobo_data()
```

Uses environment variables:

- `kobo_url`
- `unocha_id`
- `unocha_token`

------------------------------------------------------------------------

# Exports

## `export_to_excel_formatted()`

Export multiple tables to a styled workbook.

``` r
export_to_excel_formatted(my_tables)
```

------------------------------------------------------------------------

## `export_to_excel_appended()`

Append results into existing workbooks.

``` r
export_to_excel_appended(
  list_of_objects = tables,
  sheetname = "Summary"
)
```

------------------------------------------------------------------------

## `export_list_to_word()`

Export a named list of tables into Word.

``` r
export_list_to_word(table_list, "report.docx")
```

------------------------------------------------------------------------

## `write_list_to_excel()`

Write named dataframes into multi‑sheet Excel files.

``` r
write_list_to_excel(df_list, "output.xlsx")
```

------------------------------------------------------------------------

# Visualization

## `plot_bar()`

Generate polished bar charts.

``` r
plot_bar(
  data = df,
  x_var = partner,
  title = "Partner Distribution"
)
```

Features:

✔ counts  
✔ percentages  
✔ custom colors  
✔ dynamic labels

------------------------------------------------------------------------

# Utility Functions

## `collapse_villages()`

Collapse villages sharing targets.

``` r
collapse_villages(df)
```

------------------------------------------------------------------------

## `add_custom_total()`

Append totals rows.

``` r
add_custom_total(df)
```

------------------------------------------------------------------------

## `get_standard_villages()`

Standardize village labels using reference datasets.

``` r
get_standard_villages(df_partner, df_clean)
```

------------------------------------------------------------------------

# Privacy & De‑Identification

## `get_pii()`

Separate personally identifying information.

``` r
get_pii(df)
```

Returns:

1.  identifying variables
2.  de‑identified dataset
3.  original dataset

------------------------------------------------------------------------

# Dependencies

Core packages:

``` r
dplyr
gtsummary
openxlsx
ggplot2
officer
flextable
robotoolbox
stringr
```

------------------------------------------------------------------------

## 👨‍💻 Author Notes

Designed for **humanitarian data workflows**, **Kobo pipelines**,
**beneficiary validation**, and **report automation**.

<!-- badges: start -->

[![R-CMD-check](https://github.com/Bokola/acheck/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/Bokola/acheck/actions/workflows/R-CMD-check.yaml)
[![codecov](https://codecov.io/gh/Bokola/acheck/branch/main/graph/badge.svg)](https://codecov.io/gh/Bokola/acheck)
<!-- badges: end -->
