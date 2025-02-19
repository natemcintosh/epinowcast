% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/preprocess.R
\name{enw_delay_filter}
\alias{enw_delay_filter}
\title{Filter observations to restrict the maximum reporting delay}
\usage{
enw_delay_filter(obs, max_delay, timestep = "day")
}
\arguments{
\item{obs}{A \code{data.frame} containing at least the following variables:
\verb{reference date} (index date of interest), \code{report_date} (report date for
observations), and \code{confirm} (cumulative observations by reference and report
date).}

\item{max_delay}{Numeric defaults to 20 and needs to be greater than or equal
to 1 and an integer (internally it will be coerced to one using
\code{\link[=as.integer]{as.integer()}}). The maximum number of days to include in the delay
distribution. Computation scales non-linearly with this setting so consider
what maximum makes sense for your data carefully. Note that this is zero
indexed and so includes the reference date and \code{max_delay - 1} other days
(i.e. a \code{max_delay} of 1 corresponds with no delay).}

\item{timestep}{The timestep to used in the process model (i.e. the
reference date model). This can be a string ("day", "week", "month") or a
numeric whole number representing the number of days. If your data does not
have this timestep then you may wish to make use of
\code{\link[=enw_aggregate_cumulative]{enw_aggregate_cumulative()}} to aggregate your data to the desired timestep.}
}
\value{
A \code{data.frame} filtered so that dates by report are less than or
equal the reference date plus the maximum delay.
}
\description{
Filter observations to restrict the maximum reporting delay
}
\examples{
obs <- enw_example("preprocessed")$obs[[1]]
enw_delay_filter(obs, max_delay = 2)
}
\seealso{
Preprocessing functions
\code{\link{enw_add_delay}()},
\code{\link{enw_add_max_reported}()},
\code{\link{enw_add_metaobs_features}()},
\code{\link{enw_assign_group}()},
\code{\link{enw_complete_dates}()},
\code{\link{enw_construct_data}()},
\code{\link{enw_delay_metadata}()},
\code{\link{enw_extend_date}()},
\code{\link{enw_filter_reference_dates}()},
\code{\link{enw_filter_report_dates}()},
\code{\link{enw_latest_data}()},
\code{\link{enw_metadata}()},
\code{\link{enw_missing_reference}()},
\code{\link{enw_preprocess_data}()},
\code{\link{enw_reporting_triangle_to_long}()},
\code{\link{enw_reporting_triangle}()}
}
\concept{preprocess}
