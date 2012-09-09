\name{predict.oemfit}
\alias{predict.oemfit}
\title{make predictions from a fitted "oemfit" object}
\description{
  Similar to other predict methods, this function produces fitted values
  from a fitted "oemfit" object.
}
\usage{
## S3 method for class 'oemfit'
\method{predict}{oemfit} (object, newx, s = NULL,
                          type = c("response",
                          "coefficients",
                          "nonzero"), ...)
}

\arguments{
  \item{object}{fitted oemfit object.}
  \item{newx}{matrix of new values for x at which predictions are to be
    made. Must be a matrix.}
  \item{s}{Value(s) of the penalty parameter lambda at which predictions
    are required. Default is the entire sequence used to create the model. }
  \item{type}{not used.}
  \item{...}{additional predict arguments.}
}
\details{
Predicted values returned as a vector
}

\value{
  Fitted response returned.
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
\seealso{oemfit, print.oemfit, plot.oemfit}
\examples{
x=matrix(rnorm(100*20),100,20)
y=rnorm(100)
fit <- oemfit(y~x)
newx=matrix(rnorm(50*20), 50, 20)
pred <- predict(fit, newx)
}

