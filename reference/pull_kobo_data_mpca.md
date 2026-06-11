# pull data from any kobo API project and align structures dynamically

pull data from any kobo API project and align structures dynamically

## Usage

``` r
pull_kobo_data_mpca(
  url = Sys.getenv("kobo_url2"),
  project_id = Sys.getenv("mpca_id"),
  token = Sys.getenv("kobo_token")
)
```

## Arguments

- url:

  character. Kobotoolbox url

- project_id:

  character. project id

- token:

  character. project token

## Value

a clean dataframe matching manual excel column conventions universally
