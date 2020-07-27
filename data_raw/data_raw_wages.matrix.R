#' ---
#' title: "Data: wages.matrix"
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
y <- matrix(
  data = wages[, 1],
  ncol = 1
)
colnames(y) <- "wages"
X <- wages[, -1]
X <- cbind(
  constant = 1,
  X
)
X <- as.matrix(X)
head(y)
head(X)
wages.matrix <- list(
  X = X,
  y = y
)
#'
#+ usedata
usethis::use_data(
  wages.matrix,
  overwrite = TRUE
)
