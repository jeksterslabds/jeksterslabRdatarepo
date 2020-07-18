#' ---
#' title: "Data: quartet"
#' author: "Ivan Jacob Agaloos Pesigan"
#' date: "`r Sys.Date()`"
#' output:
#'   rmarkdown::html_vignette:
#'     toc: true
#' ---
#'
#+ data
quartet <- read.csv(
  "data_raw_quartet.csv",
)
head(quartet)
str(quartet)
#'
#+ usedata
usethis::use_data(
  quartet,
  overwrite = TRUE
)
