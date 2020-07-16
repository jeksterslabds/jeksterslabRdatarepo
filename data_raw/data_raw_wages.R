#' ---
#' title: "Data: wages"
#' author: "Ivan Jacob Agaloos Pesigan"
#' date: "`r Sys.Date()`"
#' output:
#'   rmarkdown::html_vignette:
#'     toc: true
#' ---
#'
#+ data
wages <- read.csv(
  "data_raw_wages.csv",
)
head(wages)
str(wages)
#'
#+ usedata
usethis::use_data(
  wages,
  overwrite = TRUE
)
