% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/charging_infrastructure.R
\name{add_charging_infrastructure}
\alias{add_charging_infrastructure}
\title{Assign a charging station to EV charging sessions}
\usage{
add_charging_infrastructure(
  sessions,
  resolution = 15,
  min_stations = 0,
  n_sockets = 2,
  names_prefix = NULL,
  duration_th = 0
)
}
\arguments{
\item{sessions}{tibble, sessions data set in standard format marked by \code{{evprof}} package}

\item{resolution}{integer, time resolution in minutes}

\item{min_stations}{integer, minimum number of charging stations to consider}

\item{n_sockets}{integer, number of sockets per charging station}

\item{names_prefix}{character, prefix of the charging station names (optional)}

\item{duration_th}{integer between 0 and 100, minimum share of time (in percentage)
of the "occupancy duration curve" (see function \code{plot_occupancy_duration_curve}).
This is used to avoid sizing a charging infrastructure to host for example
100 vehicles when only 5\% of time there are more than 80 vehicles connected.
Then, setting \code{duration_th = 5} will ensure that we don't over-size
the charging infrastructure for the 100 vehicles.
It is recommended to find this value through multiple iterations.}
}
\value{
tibble
}
\description{
Variable \code{ChargingStation} and \code{Socket}will be assigned to the \code{sessions}
tibble with a name pattern being: \code{names_prefix} + "CHS" + number
}
\examples{
# Assign a `ChargingStation` to every session according to the occupancy
sessions_infrastructure <- add_charging_infrastructure(
  sessions = head(evsim::california_ev_sessions, 50),
  resolution = 60
)
print(unique(sessions_infrastructure$ChargingStation))

# Now without considering the occupancy values that only represent
# a 10\% of the time
sessions_infrastructure <- add_charging_infrastructure(
  sessions = head(evsim::california_ev_sessions, 50),
  resolution = 60, duration_th = 10
)
print(unique(sessions_infrastructure$ChargingStation))


}
