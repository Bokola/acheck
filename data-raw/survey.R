## code to prepare `survey` dataset goes here

dict_f <- list.files(
  Sys.getenv("tools_dir"),
  pattern = "full",
  full.names = TRUE
)
df_lst <- read_workbook(
  dict_f
)

survey <-  df_lst%>% `[[`("survey") %>%
  # filter(!grepl("note", type)) %>%
  mutate(n = dplyr::row_number())

usethis::use_data(survey, overwrite = TRUE)
