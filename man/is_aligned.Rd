% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/demand.R
\name{is_aligned}
\alias{is_aligned}
\title{Is the sessions data set aligned in time?}
\usage{
is_aligned(sessions, resolution)
}
\arguments{
\item{sessions}{tibble, sessions data set in standard format marked by \code{evprof} package}

\item{resolution}{integer, time resolution (in minutes) of the time slots}
}
\value{
logical
}
\description{
Checks if sessions time variables (only connection/charging start times) are
aligned with a specific time resolution.
}
\keyword{internal}
