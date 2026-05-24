## code to prepare `choices` dataset goes here

dict_f <- list.files(
  Sys.getenv("tools_dir"),
  pattern = "full",
  full.names = TRUE
)
df_lst <- read_workbook(
  dict_f
)

choices <-  df_lst%>% `[[`("choices")

usethis::use_data(choices, overwrite = TRUE)
