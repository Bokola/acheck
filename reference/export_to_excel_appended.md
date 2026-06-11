# Export a sheet to existing workbook

Export a sheet to existing workbook

## Usage

``` r
export_to_excel_appended(
  list_of_objects = df_target_p,
  sheetname = "Target and Registered ESR",
  file_name = paste0("UNOCHA_Summary_Report_", Sys.Date(), ".xlsx"),
  output_dir = "output"
)
```

## Arguments

- list_of_objects:

  list of `gtsummary` object

- sheetname:

  character. worksheet name

- file_name:

  character. output file name

- output_dir:

  character. output directory

## Examples

``` r
if (FALSE) export_to_excel_appended() # \dontrun{}
```
