#' ---
#' title: "Data: lsat"
#' author: "Ivan Jacob Agaloos Pesigan"
#' date: "`r Sys.Date()`"
#' output:
#'   rmarkdown::html_vignette:
#'     toc: true
#' ---
#'
#+ data
law <- read.csv(
  "data_raw_law.csv",
)
head(law)
str(law)
#'
#+ usedata
usethis::use_data(
  law,
  overwrite = TRUE
)
