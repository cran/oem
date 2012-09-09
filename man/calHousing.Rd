\name{calHousing}
\alias{calHousing}
\title{California Housing data}
\description{
  Median value of houses in California and other various predictors included.}
\examples{
  data(calHousing)
  fit <- oemfit(medianValue~., data = calHousing)
  }