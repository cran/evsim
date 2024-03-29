% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/simulation.R
\name{estimate_connection}
\alias{estimate_connection}
\title{Estimate sessions connection values}
\usage{
estimate_connection(n, mu, sigma, log)
}
\arguments{
\item{n}{number of sessions}

\item{mu}{means of bivariate GMM}

\item{sigma}{covariance matrix of bivariate GMM}

\item{log}{Logical, true if models have logarithmic transformation}
}
\value{
vector of numeric values
}
\description{
Estimate sessions connection values
}
\keyword{internal}
