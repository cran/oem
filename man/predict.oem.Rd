% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/methods.R
\name{predict.oem}
\alias{predict.oem}
\title{Prediction method for Orthogonalizing EM fitted objects}
\usage{
\method{predict}{oem}(
  object,
  newx,
  s = NULL,
  which.model = 1,
  type = c("link", "response", "coefficients", "nonzero", "class"),
  ...
)
}
\arguments{
\item{object}{fitted "oem" model object}

\item{newx}{Matrix of new values for \code{x} at which predictions are to be made. Must be a matrix; can be sparse as in the 
\code{CsparseMatrix} objects of the \pkg{Matrix} package. 
This argument is not used for \code{type=c("coefficients","nonzero")}}

\item{s}{Value(s) of the penalty parameter lambda at which predictions are required. Default is the entire sequence used to create 
the model.}

\item{which.model}{If multiple penalties are fit and returned in the same oem object, the \code{which.model} argument is used to 
specify which model to make predictions for. For example, if the oem object \code{oemobj} was fit with argument 
\code{penalty = c("lasso", "grp.lasso")}, then which.model = 2 provides predictions for the group lasso model.}

\item{type}{Type of prediction required. \code{type = "link"} gives the linear predictors for the \code{"binomial"} model; for \code{"gaussian"} models it gives the fitted values. 
\code{type = "response"} gives the fitted probabilities for \code{"binomial"}. \code{type = "coefficients"} computes the coefficients at the requested values for \code{s}.
\code{type = "class"} applies only to \code{"binomial"} and produces the class label corresponding to the maximum probability.}

\item{...}{not used}
}
\value{
An object depending on the type argument
}
\description{
Prediction method for Orthogonalizing EM fitted objects
}
\examples{
set.seed(123)
n.obs <- 1e4
n.vars <- 100
n.obs.test <- 1e3

true.beta <- c(runif(15, -0.5, 0.5), rep(0, n.vars - 15))

x <- matrix(rnorm(n.obs * n.vars), n.obs, n.vars)
y <- rnorm(n.obs, sd = 3) + x \%*\% true.beta
x.test <- matrix(rnorm(n.obs.test * n.vars), n.obs.test, n.vars)
y.test <- rnorm(n.obs.test, sd = 3) + x.test \%*\% true.beta

fit <- oem(x = x, y = y, 
           penalty = c("lasso", "grp.lasso"), 
           groups = rep(1:10, each = 10), 
           nlambda = 10)

preds.lasso <- predict(fit, newx = x.test, type = "response", which.model = 1)
preds.grp.lasso <- predict(fit, newx = x.test, type = "response", which.model = 2)

apply(preds.lasso,     2, function(x) mean((y.test - x) ^ 2))
apply(preds.grp.lasso, 2, function(x) mean((y.test - x) ^ 2))

}
