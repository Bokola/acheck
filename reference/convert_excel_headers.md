# convert labeled excel headers to kobo code/value headers using form schema

convert labeled excel headers to kobo code/value headers using form
schema

## Usage

``` r
convert_excel_headers(
  target_df,
  url = Sys.getenv("kobo_url2"),
  project_id = Sys.getenv("mpca_id"),
  token = Sys.getenv("kobo_token")
)
```

## Arguments

- target_df:

  data.frame. the raw excel data frame with text headers (df)

- url:

  character. Kobotoolbox url

- project_id:

  character. kobo project uid

- token:

  character. project token

## Value

a data frame with clean value headers matching df_lab
