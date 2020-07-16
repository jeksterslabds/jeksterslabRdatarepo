#' ---
#' title: "Data: galton"
#' author: "Ivan Jacob Agaloos Pesigan"
#' date: "`r Sys.Date()`"
#' output:
#'   rmarkdown::html_vignette:
#'     toc: true
#' ---
#'
#+ data
galton <- read.delim(
  "data_raw_galton.tsv",
  stringsAsFactors = TRUE
)
head(galton)
str(galton)
#'
#+ usedata
usethis::use_data(
  galton,
  overwrite = TRUE
)
