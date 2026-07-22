# Package index

## All functions

- [`add_custom_total()`](https://bokola.github.io/acheck/reference/add_custom_total.md)
  : calculate column-wise totals

- [`add_gt_to_word()`](https://bokola.github.io/acheck/reference/add_gt_to_word.md)
  : Add a gtsummary objet to word doc

- [`apply_corrections()`](https://bokola.github.io/acheck/reference/apply_corrections.md)
  : Apply Data Cleaning Corrections Using an Embedded Cleaning Log

- [`automate_indicators()`](https://bokola.github.io/acheck/reference/automate_indicators.md)
  : Automate binary indicator variable creation

- [`calculate_average_monthly_income()`](https://bokola.github.io/acheck/reference/calculate_average_monthly_income.md)
  : Calculate Total Monthly Income Vector

- [`calculate_disability_counts()`](https://bokola.github.io/acheck/reference/calculate_disability_counts.md)
  : calculate a row level individual disability indicator

- [`calculate_hh_disability_counts()`](https://bokola.github.io/acheck/reference/calculate_hh_disability_counts.md)
  : calculate the total number of disabled individuals at the household
  level

- [`calculate_hunger_score()`](https://bokola.github.io/acheck/reference/calculate_hunger_score.md)
  : calculate household hunger score and categorical scale

- [`calculate_psychological_distress()`](https://bokola.github.io/acheck/reference/calculate_psychological_distress.md)
  : Calculate Psychological Distress Domain Disability Indicator

- [`check_disability()`](https://bokola.github.io/acheck/reference/check_disability.md)
  : validate and recode household disability flags based on repeat group
  ages

- [`check_disability_single()`](https://bokola.github.io/acheck/reference/check_disability_single.md)
  : validate and recode household disability flags based on repeat group
  ages in a single dataset

- [`check_esr_registrations()`](https://bokola.github.io/acheck/reference/check_esr_registrations.md)
  : Title

- [`choices`](https://bokola.github.io/acheck/reference/choices.md) :
  UNOcha survey choices

- [`clean_camp()`](https://bokola.github.io/acheck/reference/clean_camp.md)
  : clean recode beneficiary camp

- [`clean_kobo_excel()`](https://bokola.github.io/acheck/reference/clean_kobo_excel.md)
  : clean manual kobo excel data to align with api structure

- [`clean_phone_number()`](https://bokola.github.io/acheck/reference/clean_phone_number.md)
  : clean phone number by adding 254 prexif

- [`clean_string()`](https://bokola.github.io/acheck/reference/clean_string.md)
  : clean string of spaces and non alphanumeric characters and make
  lower case

- [`clean_username()`](https://bokola.github.io/acheck/reference/clean_username.md)
  : clean names by removing special characters, deleting extra spaces,
  and converting to title case

- [`collapse_villages()`](https://bokola.github.io/acheck/reference/collapse_villages.md)
  : collapse villages that share targets, separating by /

- [`convert_excel_headers()`](https://bokola.github.io/acheck/reference/convert_excel_headers.md)
  : convert labeled excel headers to kobo code/value headers using form
  schema

- [`create_listing_table()`](https://bokola.github.io/acheck/reference/create_listing_table.md)
  :

  create `gtreg` table listing of data

- [`create_summary_table()`](https://bokola.github.io/acheck/reference/create_summary_table.md)
  :

  create a `gtsummary` table with optional top n category filtering

- [`create_survey_object()`](https://bokola.github.io/acheck/reference/create_survey_object.md)
  : create a survey design object dynamically for any complex sampling
  design

- [`create_survey_summary_table()`](https://bokola.github.io/acheck/reference/create_survey_summary_table.md)
  :

  create a `gtsummary` table from a survey design object

- [`cut_numeric()`](https://bokola.github.io/acheck/reference/cut_numeric.md)
  : categorize numeric cols

- [`draw_cluster_sample()`](https://bokola.github.io/acheck/reference/draw_cluster_sample.md)
  : Draw a Two-Stage Cluster Sample of Households

- [`draw_pps_hamilton()`](https://bokola.github.io/acheck/reference/draw_pps_hamilton.md)
  : Draw a Sample of Households Proportional to Village Size

- [`draw_pps_sample()`](https://bokola.github.io/acheck/reference/draw_pps_sample.md)
  : Draw PPS Household Sample

- [`draw_strs_sample()`](https://bokola.github.io/acheck/reference/draw_strs_sample.md)
  : Draw a Stratified Simple Random Sample of Households

- [`draw_systematic_across_villages()`](https://bokola.github.io/acheck/reference/draw_systematic_across_villages.md)
  : Draw a Systematic Sample of Households Spreading Across Villages

- [`draw_systematic_within_villages()`](https://bokola.github.io/acheck/reference/draw_systematic_within_villages.md)
  : Draw a Systematic Sample of Households Within Each Village

- [`export_list_to_word()`](https://bokola.github.io/acheck/reference/export_list_to_word.md)
  : Export a list of dataframes to word

- [`export_to_excel_appended()`](https://bokola.github.io/acheck/reference/export_to_excel_appended.md)
  : Export a sheet to existing workbook

- [`export_to_excel_formatted()`](https://bokola.github.io/acheck/reference/export_to_excel_formatted.md)
  : Export/write gtsummary output to excel workbook

- [`find_extra_agency_records()`](https://bokola.github.io/acheck/reference/find_extra_agency_records.md)
  : find unique extra records in a matched dataset missing from the
  reference payroll

- [`find_name_matches()`](https://bokola.github.io/acheck/reference/find_name_matches.md)
  : Identify Potential Beneficiary Name Matches From a Master Dataset

- [`find_uuid_cols()`](https://bokola.github.io/acheck/reference/find_uuid_cols.md)
  : find columns containing uuid strings

- [`flatten_dm_by_names()`](https://bokola.github.io/acheck/reference/flatten_dm_by_names.md)
  : flatten all tables within a dm object into a list of data frames

- [`format_num()`](https://bokola.github.io/acheck/reference/format_num.md)
  : format numeric vectors using gtsummary style number labels safely

- [`gen_verification_criteria_table()`](https://bokola.github.io/acheck/reference/gen_verification_criteria_table.md)
  : Create the target beneficiary verification criteria and indicators
  summary

- [`get_distinct()`](https://bokola.github.io/acheck/reference/get_distinct.md)
  : get distinct beneficiaries on select variables

- [`get_dupes_with_name()`](https://bokola.github.io/acheck/reference/get_dupes_with_name.md)
  : get duplicate rows, track the checked field, and subset down to
  designated columns via an argument

- [`get_duplicates()`](https://bokola.github.io/acheck/reference/get_duplicates.md)
  : get duplicate beneficiaries on select variables

- [`get_edit_data()`](https://bokola.github.io/acheck/reference/get_edit_data.md)
  : Read partner registration edit files

- [`get_group_cols()`](https://bokola.github.io/acheck/reference/get_group_cols.md)
  : Extract column names from a data dictionary based on structural
  boundaries

- [`get_outlier_income()`](https://bokola.github.io/acheck/reference/get_outlier_income.md)
  : Split dataset by expenditure thresholds

- [`get_partial_matches()`](https://bokola.github.io/acheck/reference/get_partial_matches.md)
  : find partial matches between focal and beneficiary

- [`get_partial_matches_extend()`](https://bokola.github.io/acheck/reference/get_partial_matches_extend.md)
  : find partial matches and map the single best-matching focal name
  onto dataframe 2

- [`get_partner_beneficiaries()`](https://bokola.github.io/acheck/reference/get_partner_beneficiaries.md)
  : filter and deduplicate beneficiary logs by agency partner

- [`get_pii()`](https://bokola.github.io/acheck/reference/get_pii.md) :
  Get personally identifying columns

- [`get_standard_villages()`](https://bokola.github.io/acheck/reference/get_standard_villages.md)
  : separate villages collapsed by forward slash ("\|")

- [`get_top_n_levels()`](https://bokola.github.io/acheck/reference/get_top_n_levels.md)
  : get a character vector of the top n levels of a categorical variable

- [`get_vulnerability_data()`](https://bokola.github.io/acheck/reference/get_vulnerability_data.md)
  : get vulnerability criteria (physiological, nutritional etc)

- [`grep_columns_in_list()`](https://bokola.github.io/acheck/reference/grep_columns_in_list.md)
  : grep column names matching a pattern across a list of dataframes

- [`label_kobo_columns()`](https://bokola.github.io/acheck/reference/label_kobo_columns.md)
  : replace data column names with question labels from a kobo asset
  form metadata structure

- [`label_with_xlsform()`](https://bokola.github.io/acheck/reference/label_with_xlsform.md)
  : convert and label an excel export using xlsform workbook sheets

- [`match_county_records()`](https://bokola.github.io/acheck/reference/match_county_records.md)
  : Filter and Match Payroll Records Against Registration Data by County

- [`normalize_names()`](https://bokola.github.io/acheck/reference/normalize_names.md)
  : Normalize a Name Vector

- [`parse_hhsize()`](https://bokola.github.io/acheck/reference/parse_hhsize.md)
  : Parse and extract household size as an integer vector

- [`patchwork_grid()`](https://bokola.github.io/acheck/reference/patchwork_grid.md)
  : patchwork a list of plots with headers for sections arranged left to
  right with unified axes labels

- [`plot_age_gender()`](https://bokola.github.io/acheck/reference/plot_age_gender.md)
  : plot age distribution faceted by gender using patchwork

- [`plot_bar()`](https://bokola.github.io/acheck/reference/plot_bar.md)
  : plot bar graphs with automatic summary calculations

- [`plot_bar_top_n()`](https://bokola.github.io/acheck/reference/plot_bar_top_n.md)
  : plot bar graphs for top n frequencies

- [`plot_faceted_donuts()`](https://bokola.github.io/acheck/reference/plot_faceted_donuts.md)
  : visualize parts to whole using an automated faceted donut grid via
  patchwork

- [`plot_household_counts()`](https://bokola.github.io/acheck/reference/plot_household_counts.md)
  : plot household aggregation counts using unicode location pins with
  bold plotmath ggrepel label text callouts

- [`plot_household_counts_interactive()`](https://bokola.github.io/acheck/reference/plot_household_counts_interactive.md)
  : plot interactive household count markers using real location pin
  icons positioned safely inside boundaries

- [`plot_parts_donut()`](https://bokola.github.io/acheck/reference/plot_parts_donut.md)
  : visualize parts to whole using a donut layout framework

- [`preprocess()`](https://bokola.github.io/acheck/reference/preprocess.md)
  : preprocess unocha registrations

- [`preprocess_reg()`](https://bokola.github.io/acheck/reference/preprocess_reg.md)
  : preprocess unocha registrations

- [`process_payroll()`](https://bokola.github.io/acheck/reference/process_payroll.md)
  : clean payroll data

- [`pull_kobo_data()`](https://bokola.github.io/acheck/reference/pull_kobo_data.md)
  : pull data from kobo API

- [`pull_kobo_data_mpca()`](https://bokola.github.io/acheck/reference/pull_kobo_data_mpca.md)
  : pull data from any kobo API project and align structures dynamically

- [`read_workbook()`](https://bokola.github.io/acheck/reference/read_workbook.md)
  : Read Excel sheets or an entire workbook into a list or data frame
  with clean names

- [`read_xlsform_asset()`](https://bokola.github.io/acheck/reference/read_xlsform_asset.md)
  : read an xlsform file and compile it into a kobo asset metadata list

- [`recode_early_childhood_disability()`](https://bokola.github.io/acheck/reference/recode_early_childhood_disability.md)
  : reset disability columns based on age thresholds

- [`recode_factor_to_character()`](https://bokola.github.io/acheck/reference/recode_factor_to_character.md)
  : recode factors to character

- [`run_sample()`](https://bokola.github.io/acheck/reference/run_sample.md)
  : run sampling schemes

- [`save_plots_to_png()`](https://bokola.github.io/acheck/reference/save_plots_to_png.md)
  : save a list of active plots into a grid using the png device

- [`slice_reg()`](https://bokola.github.io/acheck/reference/slice_reg.md)
  : slice registration to match starting dates

- [`standardize_names()`](https://bokola.github.io/acheck/reference/standardize_names.md)
  : Map and Standardize Administrative Names to Reference Values

- [`survey`](https://bokola.github.io/acheck/reference/survey.md) :
  UNOcha survey tool

- [`theme_plots()`](https://bokola.github.io/acheck/reference/theme_plots.md)
  : publication ready theme wrapper using cowplot with gridlines

- [`verification_criteria`](https://bokola.github.io/acheck/reference/verification_criteria.md)
  : Target beneficiary verification criteria and indicators dataset

- [`write_list_to_excel()`](https://bokola.github.io/acheck/reference/write_list_to_excel.md)
  : export a named list of data frames to an excel workbook
