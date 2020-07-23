#' ---
#' title: "Data: svd"
#' author: "Ivan Jacob Agaloos Pesigan"
#' date: "`r Sys.Date()`"
#' output:
#'   rmarkdown::html_vignette:
#'     toc: true
#' ---
#'
#+ data
svd <- read.csv(
  "data_raw_svd.csv"
)
y <- svd[, "y"]
X <- as.matrix(svd[, -1])
head(y)
str(y)
head(X)
str(X)
svd <- list(
  y = y,
  X = X
)
#'
#+ usedata
usethis::use_data(
  svd,
  overwrite = TRUE
)
