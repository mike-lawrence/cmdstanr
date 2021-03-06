% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fit.R
\name{fit-method-time}
\alias{fit-method-time}
\alias{time}
\title{Report timing of CmdStan runs}
\usage{
time()
}
\value{
A list with elements
\itemize{
\item \code{total}: (scalar) The total run time. For MCMC this may be different than
the sum of the chain run times if parallelization was used.
\item \code{chains}: (data frame) For MCMC only, timing info for the individual
chains. The data frame has columns \code{"chain_id"}, \code{"warmup"}, \code{"sampling"},
and \code{"total"}.
}
}
\description{
Report the run time in seconds. For MCMC additional information
is provided about the run times of individual chains and the warmup and
sampling phases.
}
\examples{
\dontrun{
fit_mcmc <- cmdstanr_example("logistic", method = "sample")
fit_mcmc$time()

fit_mle <- cmdstanr_example("logistic", method = "optimize")
fit_mle$time()

fit_vb <- cmdstanr_example("logistic", method = "variational")
fit_vb$time()
}

}
\seealso{
\code{\link{CmdStanMCMC}}, \code{\link{CmdStanMLE}}, \code{\link{CmdStanVB}}, \code{\link{CmdStanGQ}}
}
