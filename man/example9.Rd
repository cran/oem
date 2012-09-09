\name{example9}
\alias{example9}
\title{Example 9 in the oem paper}
\description{
  To load the data demonstrated as example 9 in the paper.
  }
\references{
Xiong, S., Dai, B. and Qian, P. Z. G. (2011), \emph{Orthogonalizing
  Penalized Regression}, \url{http://www.stat.wisc.edu/~zhiguang/OEM.pdf}\cr
}

\examples{
  data(example9)
  fit <- oemfit(Y~., data = example9)
  }