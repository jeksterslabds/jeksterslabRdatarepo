#' ---
#' title: "Test: data_thirst"
#' author: "Ivan Jacob Agaloos Pesigan"
#' date: "`r Sys.Date()`"
#' resultput: rmarkdown::html_vignette
#' vignette: >
#'   %\VignetteIndexEntry{Test: data_thirst}
#'   %\VignetteEngine{knitr::rmarkdown}
#'   %\VignetteEncoding{UTF-8}
#' ---
#'
#+ include = FALSE, cache = FALSE
knitr::opts_chunk$set(
  error = TRUE,
  collapse = TRUE,
  comment = "#>",
  result.width = "100%"
)
#'
#+ setup
library(testthat)
library(jeksterslabRdatarepo)
context("Test data_thirst.")
#'
#' ## Load data
#'
#+ load_data
data(
  thirst,
  package = "jeksterslabRdatarepo"
)
#'
#+ fit, echo = FALSE
varnames <- c("X", "M", "Y")
model_01 <- lm(
  thirst ~ temp,
  data = thirst
)
model_02 <- lm(
  water ~ temp + thirst,
  data = thirst
)
muhatX <- mean(thirst$temp)
muhatM <- mean(thirst$thirst)
muhatY <- mean(thirst$water)
sigma2hatX <- var(thirst$temp)
sigma2hatM <- var(thirst$thirst)
sigma2hatY <- var(thirst$water)
deltahatM <- coef(model_01)[1]
alphahat <- coef(model_01)[2]
sigma2hatepsilonhatM <- (summary(model_01)$sigma)^2
deltahatY <- coef(model_02)[1]
tauprimehat <- coef(model_02)[2]
betahat <- coef(model_02)[3]
sigma2hatepsilonhatY <- (summary(model_02)$sigma)^2
alphahatbetahat <- alphahat * betahat
thetahat <- alphahatbetahat
# sigma2hatepsilonhatM <- sigma2hatM - (alphahat^2 * sigma2hatX)
# sigma2hatepsilonhatY <- sigma2hatY - ((betahat^2 * alphahat^2 * sigma2hatX) + (betahat^2 * sigma2hatepsilonhatM) + (2 * alphahat * betahat * tauprimehat * sigma2hatX) + (tauprimehat^2 * sigma2hatX))
# deltahatM <- muhatM - (alphahat * muhatX)
# deltahatY <- muhatY - ((tauprimehat * muhatX) + (betahat * deltahatM) + (alphahat * betahat * muhatX))
A <- matrix(
  data = c(
    0,
    alphahat,
    tauprimehat,
    0,
    0,
    betahat,
    0,
    0,
    0
  ),
  ncol = 3
)
colnames(A) <- varnames
rownames(A) <- varnames
S <- matrix(
  data = c(
    sigma2hatX,
    0,
    0,
    0,
    sigma2hatepsilonhatM,
    0,
    0,
    0,
    sigma2hatepsilonhatY
  ),
  ncol = 3
)
colnames(S) <- varnames
rownames(S) <- varnames
F <- diag(3)
colnames(F) <- varnames
rownames(F) <- varnames
I <- diag(3)
colnames(I) <- varnames
rownames(I) <- varnames
Sigmahatthetahat <- F %*% solve(I - A) %*% S %*% t(solve(I - A)) %*% t(F)
colnames(Sigmahatthetahat) <- varnames
rownames(Sigmahatthetahat) <- varnames
muhatthetahat <- c(
  muhatX,
  muhatM,
  muhatY
)
names(muhatthetahat) <- varnames
#'
#' ## Model
#'
#' \begin{equation}
#'   Y_i
#'   =
#'   \delta_Y
#'   +
#'   \tau^{
#'     \prime
#'   }
#'   X_i
#'   +
#'   \beta
#'   M_i
#'   +
#'   \varepsilon_{
#'     Y_{
#'       i
#'     }
#'   }, \\
#'   \enspace
#'   \text{
#'     where
#'   }
#'   \enspace
#'   \boldsymbol{
#'     \varepsilon_{
#'       Y_{
#'         i
#'       }
#'     }
#'   }
#'   \sim
#'   \mathcal{
#'     N
#'   }
#'   \left(
#'     \mu_{\varepsilon_{Y_{i}}}
#'     =
#'     0,
#'     \sigma^{
#'       2
#'     }_{
#'       \varepsilon_{
#'         Y_{
#'           i
#'         }
#'       }
#'     }
#'     \mathrm{
#'       I
#'     }
#'   \right)
#' \end{equation}
#'
#' \begin{equation}
#'   M_i
#'   =
#'   \delta_M
#'   +
#'   \alpha
#'   X_i
#'   +
#'   \varepsilon_{
#'     M_i
#'   }, \\
#'   \enspace
#'     \text{where}
#'   \enspace
#'   \boldsymbol{
#'     \varepsilon_{
#'       M_i
#'     }
#'   }
#'   \sim
#'   \mathcal{
#'     N
#'   }
#'   \left(
#'     \mu_{
#'       \varepsilon_{
#'         M_{
#'           i
#'         }
#'       }
#'     }
#'     =
#'     0,
#'     \sigma^2_{
#'       \varepsilon_{
#'         M_i
#'       }
#'     }
#'     \mathrm{
#'       I
#'     }
#'   \right)
#' \end{equation}
#'
#' ## Data
#'
#+ data, echo = FALSE
Variable <- c(
  "`temp`",
  "`thirst`",
  "`water`"
)
Description <- c(
  "Room temperature in degrees Fahrenheit.",
  "Self-reported thirst at the end of a 2-hour period.",
  "Water consumed during the last 2 hours in deciliters."
)
Notation <- c(
  "$X$",
  "$M$",
  "$Y$"
)
knitr::kable(
  x = data.frame(
    Variable,
    Description,
    Notation
  ),
  row.names = FALSE,
  caption = "Variables"
)
#'
#' ## Mean structure
#'
#+ mean_structure, echo = FALSE
Variable <- c(
  "`muhatX`",
  "`deltahatM`",
  "`deltahatY`"
)
Description <- c(
  "Estimated mean of $X$.",
  "Estimated intercept of $M$.",
  "Estimated intercept of $Y$."
)
Notation <- c(
  "$\\hat{\\mu}_X$",
  "$\\hat{\\delta}_M$",
  "$\\hat{\\delta}_Y$"
)
Value <- c(
  muhatX,
  deltahatM,
  deltahatY
)
knitr::kable(
  x = data.frame(
    Variable,
    Description,
    Notation,
    Value
  ),
  row.names = FALSE,
  caption = "Estimated mean of $X$ and regression intercepts"
)
#'
#' ## Covariance structure
#'
#+ A_matrix, echo = FALSE
Variable <- c(
  "`alphahat`",
  "`tauprimehat`",
  "`betahat`",
  "`alphahatbetahat`"
)
Description <- c(
  "Estimated regression slope of path from $X$ to $M$.",
  "Estimated regression slope of path from $X$ to $Y$.",
  "Estimated regression slope of path from $M$ to $Y$.",
  "Estimated indirect effect."
)
Notation <- c(
  "$\\hat{\\alpha}$",
  "$\\hat{\\tau}^{\\prime}$",
  "$\\hat{\\beta}$",
  "$\\hat{\\alpha} \\hat{\\beta}$"
)
Value <- c(
  alphahat,
  tauprimehat,
  betahat,
  alphahatbetahat
)
knitr::kable(
  x = data.frame(
    Variable,
    Description,
    Notation,
    Value
  ),
  row.names = FALSE,
  caption = "Estimated regression slopes"
)
#'
#+ S_matrix, echo = FALSE
# A matrix
Variable <- c(
  "`sigma2hatX`",
  "`sigma2hatepsilonhatM`",
  "`sigma2hatepsilonhatY`"
)
Description <- c(
  "Estimated variance of $X$.",
  "Estimated error variance of $\\hat{\\varepsilon}_M$.",
  "Estimated error variance of $\\hat{\\varepsilon}_Y$."
)
Notation <- c(
  "$\\hat{\\sigma}^2_X$",
  "$\\hat{\\sigma}^2_{\\hat{\\varepsilon}_{M}}$",
  "$\\hat{\\sigma}^2_{\\hat{\\varepsilon}_{Y}}$"
)
Value <- c(
  sigma2hatX,
  sigma2hatepsilonhatM,
  sigma2hatepsilonhatY
)
knitr::kable(
  x = data.frame(
    Variable,
    Description,
    Notation,
    Value
  ),
  row.names = FALSE,
  caption = "Estimated variance of $X$ and error variances"
)
#'
#' ## Fitted model-implied variance-covariance matrix
#'
#+ fitted_model_implied_covariance, echo = FALSE
knitr::kable(
  x = muhatthetahat,
  caption = "$\\boldsymbol{\\hat{\\mu}} \\left( \\boldsymbol{\\hat{\\theta}} \\right)$ (`muhatthetahat`)"
)
#'
#' ## Fitted model-implied mean vector
#'
#+ fitted_model_implied_mean, echo = FALSE
knitr::kable(
  x = Sigmahatthetahat,
  caption = "$\\boldsymbol{\\hat{\\Sigma}} \\left( \\boldsymbol{\\hat{\\theta}} \\right)$ (`Sigmahatthetahat`)"
)
#'
#' ## testthat
#'
#+ testthat
test_that("regression_coefficients", {
  expect_equivalent(
    round(
      c(
        -20.702430,
        0.338593,
        -12.712884,
        0.207648,
        0.451039
      ),
      digits = 2
    ),
    round(
      c(
        deltahatM,
        alphahat,
        deltahatY,
        tauprimehat,
        betahat
      ),
      digits = 2
    )
  )
})
