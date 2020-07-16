#' ---
#' title: "Data: thirst"
#' author: "Ivan Jacob Agaloos Pesigan"
#' date: "`r Sys.Date()`"
#' output:
#'   rmarkdown::html_vignette:
#'     toc: true
#' ---
#'
#+ data
thirst <- read.csv(
  "data_raw_thirst.csv",
)
head(thirst)
str(thirst)
#'
#+ usedata
usethis::use_data(
  thirst,
  overwrite = TRUE
)
