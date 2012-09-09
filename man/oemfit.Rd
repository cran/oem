\name{oemfit}
\alias{oemfit}
\title{fit a penalized least squares with orthogonalizing EM algorithm}
\description{
  Fit a least squares model via penalized maximum likelihood. The
  regularization path is computed for several different penalties at a
  grid of values for the regularization patameter lambda.
  }
  \usage{
oemfit (formula, data = list(), lambda = NULL, nlambda = 100,
        lambda.min.ratio = NULL, tolerance = 1e-3,
        maxIter = 1000, standardized = TRUE, numGroup = 1,
        penalty = c("lasso", "scad", "ols", "elastic.net",
        "ngarrote", "mcp"), alpha = 3,
        evaluate = 0, condition = -1)
}

\arguments{
  \item{formula}{an object of 'formula' (or one that can be coerced to
    that class): a symbolic description of the model to be fitted. The
    details of model specification are given under 'Details'}
  \item{data}{an optional data frame, list or environment (or object
    coercible by 'as.data.frame' to a data frame) containing the
    variables in the model.  If not found in 'data', the
    variables are taken from 'environment(formula)', typically
    the environment from which 'oemfit' is called.}
  \item{lambda}{A user supplied \code{lambda} sequence. Typical usage is
  to have the program compute its own \code{lambda} sequence based on
  \code{nlambda} and \code{lambda.min.ratio}. Supplying a value of
  \code{lambda} overrides this. WARNING: use with care. Do not supply a
  single value for \code{lambda} (for predictions after CV use \code{predict()} 
  instead).  Supply instead a decreasing sequence of \code{lambda}
  values. \code{oemfit} relies on its warms starts for speed, and its
  often faster to fit a whole path than compute a single fit.}
  \item{nlambda}{The number of \code{lambda} values - default is 100.}
  \item{lambda.min.ratio}{Smallest value for \code{lambda}, as a fraction of
    \code{lambda.max}, the (data derived) entry value (i.e. the smallest
  value for which all coefficients are zero). The default depends on the
  sample size \code{nobs} relative to the number of variables
  \code{nvars}. If \code{nobs > nvars}, the default is \code{0.0001},
  close to zero.  If \code{nobs < nvars}, the default is \code{0.01}.
  A very small value of
  \code{lambda.min.ratio} will lead to a saturated fit in the \code{nobs <
  nvars} case.}
  \item{tolerance}{Convergence tolerance for OEM. Each inner
    OEM loop continues until the maximum change in the
    objective after any coefficient update is less than \code{tolerance}.
    Defaults value is \code{1E-3}.}
  \item{maxIter}{Maximum number of passes over the data for all lambda
    values; default is 1000.}
  \item{standardized}{Logical flag for x variable standardization, prior to
    fitting the model sequence. The coefficients are always returned on
    the original scale. Default is \code{standardize=TRUE}.
    If variables are in the same units already, you might not wish to
    standardize.}
  \item{numGroup}{Integer value for the number of groups to use for OEM
    fitting. Default is 1.}
  \item{penalty}{Penalty type in lower letters. Different types include
    'lasso', 'scad', 'ols' (ordinary least square), 'elastic-net',
    'ngarrote' (non-negative garrote) and 'mcp'.}
  \item{alpha}{alpha value for scad and mcp.}
  \item{evaluate}{Debugging argument.}
  \item{condition}{Debugging for different ways of calculating OEM.}
}
\details{
  The sequence of models implied by 'lambda' is fit by OEM algorithm. 
  }
\value{
An object with S3 class \code{"oemfit"}
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
\seealso{cv.oemfit, print.oemfit, plot.oemfit, predict.oemfit}
\examples{
x=matrix(rnorm(100*20),100,20)
y=rnorm(100)
fit <- oemfit(y~x)
}

