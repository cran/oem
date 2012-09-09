\name{print.oemfit}
\alias{print.oemfit}
\title{print an oemfit object}
\description{
  Print a summary of the oemfit path at each step along the path.
}
\usage{
## S3 method for class 'oemfit'
\method{print}{oemfit} (x, digits = max(3, getOption("digits") - 3), ...)

}

\arguments{
  \item{x}{fitted oemfit object.}
  \item{digits}{significant digits in print out.}
  \item{...}{additional print arguments.}
}
\details{
  The call that produced the object x is printed, followed by a three-column matrix with columns Df,
  sum of squares and \code{lambda}.}
\value{
  The matrix above is silently returned.
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
\seealso{oemfit, plot.oemfit, predict.oemfit}
\examples{
x=matrix(rnorm(100*20),100,20)
y=rnorm(100)
fit <- oemfit(y~x)
print(fit)
}

