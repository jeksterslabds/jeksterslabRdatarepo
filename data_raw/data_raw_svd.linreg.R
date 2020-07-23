#' ---
#' title: "Data: svd.linreg"
#' author: "Ivan Jacob Agaloos Pesigan"
#' date: "`r Sys.Date()`"
#' output:
#'   rmarkdown::html_vignette:
#'     toc: true
#' ---
#'
#+ data
svda <- read.csv(
  "data_raw_svda.csv"
)
svdb <- read.csv(
  "data_raw_svdb.csv"
)
ya <- svda[, "y"]
Xa <- as.matrix(svda[, -1])
yb <- svdb[, "y"]
Xb <- as.matrix(svdb[, -1])
head(ya)
str(ya)
head(Xa)
str(Xa)
head(yb)
str(yb)
head(Xb)
str(Xb)
svd.linreg <- list(
  ya = ya,
  Xa = Xa,
  yb = yb,
  Xb = Xb
)
#'
#+ usedata
usethis::use_data(
  svd.linreg,
  overwrite = TRUE
)
