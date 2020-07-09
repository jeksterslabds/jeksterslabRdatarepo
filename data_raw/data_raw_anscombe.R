#' ---
#' title: "Data: anscombe"
#' author: "Ivan Jacob Agaloos Pesigan"
#' date: "`r Sys.Date()`"
#' output:
#'   rmarkdown::html_vignette:
#'     toc: true
#' ---
#'
#+ data
anscombe <- read.csv(
  "anscombe.csv",
)
head(anscombe)
str(anscombe)
#'
#+ usedata
usethis::use_data(
  anscombe,
  overwrite = TRUE
)
