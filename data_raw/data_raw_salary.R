#' ---
#' title: "Data: salary"
#' author: "Ivan Jacob Agaloos Pesigan"
#' date: "`r Sys.Date()`"
#' output:
#'   rmarkdown::html_vignette:
#'     toc: true
#' ---
#'
#+ data
salary <- read.csv(
  "data_raw_salary.csv",
)
head(salary)
str(salary)
#'
#+ usedata
usethis::use_data(
  salary,
  overwrite = TRUE
)
