\name{plot.oemfit}
\alias{plot.oemfit}
\title{plot coefficients from an oemfit object}
\description{
  Produces a coefficient profile plot of the coefficient paths for a fitted "oemfit" object.
}
\usage{
## S3 method for class 'oemfit'
\method{plot}{oemfit}(x, xvar = c("norm", "lambda", "loglambda", "dev"),
                      xlab = iname, ylab = "Coefficients", ...)

}

\arguments{
  \item{x}{fitted oemfit object.}
  \item{xvar}{what is on the X-axis. "norm" plots against the L1-norm of the coefficients,
    "lambda" against the log-lambda sequence, and "dev" against the percent deviance
    explained.}
  \item{xlab}{label on X-axis.}
  \item{ylab}{label on Y-axis.}
  \item{...}{additional plot arguments.}
}
\details{
  A coefficient profile plot is produced.
  }



\author{
Bin Dai

Maintainer: Bin Dai <daibin@zuaa.zju.edu.cn>
}
\references{
Xiong, S., Dai, B. and Qian, P. Z. G. (2011), \emph{Orthogonalizing
  Penalized Regression}, \url{http://www.stat.wisc.edu/~zhiguang/OEM.pdf}\cr
}

\keyword{ package }
\keyword{ regression }
\seealso{oemfit, print.oemfit, predict.oemfit}
\examples{
x=matrix(rnorm(100*20),100,20)
y=rnorm(100)
fit <- oemfit(y~x)
plot(fit)
}

