#' ---
#' title: "Data: alienation"
#' author: "Ivan Jacob Agaloos Pesigan"
#' date: "`r Sys.Date()`"
#' output:
#'   rmarkdown::html_vignette:
#'     toc: true
#' ---
#'
#+ data
alienation <- read.csv(
  "data_raw_alienation.csv",
  row.names = 1
)
alienation <- as.matrix(alienation)
head(alienation)
str(alienation)
#'
#+ usedata
usethis::use_data(
  alienation,
  overwrite = TRUE
)
