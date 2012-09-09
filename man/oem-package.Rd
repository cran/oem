\name{oem-package}
\alias{oem-package}
\alias{oem}
\docType{package}
\title{
Orthogonalizing EM algorithm for penalized least squares problem.
}
\description{
This package fits various different penalized least squares regression
including LASSO, MCP and so on. The algorithm utilized is called
Orthogonalizing Expectation Maximization (OEM).
}
\details{
\tabular{ll}{
Package: \tab oem \cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2012-07-25\cr
License: \tab GPL (>= 2)\cr
}
Very simple to use. Accepts \code{x,y} data for regression models, and
produces the regularization path over a grid of values for the tuning
parameter \code{lambda}. Only 5 functions:
\code{oemfit}\cr
\code{predict.oemfit}\cr
\code{plot.oemfit}\cr
\code{print.oemfit}\cr
\code{coef.oemfit}
}


\author{
Bin Dai

Maintainer: Bin Dai <dai@stat.wisc.edu>
}
\references{
Xiong, S., Dai, B. and Qian, P. Z. G. (2011), \emph{Orthogonalizing
  Penalized Regression}, \url{http://www.stat.wisc.edu/~zhiguang/OEM.pdf}\cr
}

\keyword{ package }
\keyword{ regression }

\examples{
x=matrix(rnorm(100*20),100,20)
y=rnorm(100)
fit <- oemfit(y~x)
}
