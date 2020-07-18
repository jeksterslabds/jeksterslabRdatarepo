#' ---
#' title: "Data: heights"
#' author: "Ivan Jacob Agaloos Pesigan"
#' date: "`r Sys.Date()`"
#' output:
#'   rmarkdown::html_vignette:
#'     toc: true
#' ---
#'
#+ data
heights <- read.delim(
  "data_raw_heights.tsv",
  stringsAsFactors = TRUE
)
head(heights)
str(heights)
#'
#+ usedata
usethis::use_data(
  heights,
  overwrite = TRUE
)
