% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/LRT.trend.R
\name{LRT.trend.test}
\alias{LRT.trend}
\alias{LRT.trend.test}
\title{Compute a test of trend in prevalences based on a likelihood-ratio statistic}
\usage{
LRT.trend.test(data, variables = colnames(data), confidence.level = 0.95,
  number.of.bootstrap.samples = 5000, plot = NULL, seed = 1)
}
\arguments{
\item{data}{A two row matrix or data.frame of prevalence estimates and
their standard errors. The first row is the prevalence estimates and the
second are the standard errors. The column are the comparison groups in the
order (e.g., time) there are to be assessed. The row names of \code{data}
should be "estimate" and "sigma". This is}

\item{variables}{A character vector of column names it select from \code{data}.}

\item{confidence.level}{The confidence level for the confidence intervals. The default is 0.95 for 95\%.}

\item{number.of.bootstrap.samples}{The number of Monte Carlo draws to
determine the null distribution of the likelihood ratio statistic.}

\item{plot}{A character vector of choices, a subset of \code{estimates}, \code{distributions}.
If \code{estimates} is given then a plot of the estimates and nominal 95\% confidence bands (as error bars) is produced.
If \code{distributions} is given then a plot is produced of the null distributions of
the likelihood
ratio statistic with the observed statistics plotted as a vertical dashed line.}

\item{seed}{The value of the random number seed. Preset by default to allow reproducibility.}
}
\value{
A list with components
\itemize{ \item\code{pvalue.increasing}: The p-value for the test of a monotone increase in population prevalence.
\item\code{pvalue.decreasing}: The p-value for the test of a monotone decrease in population prevalence.
\item\code{L}: The value of the likelihood-ratio statistic.
\item\code{x}: The passed vector of prevalence estimates in the order (e.g., time).
\item\code{sigma} The passed vector of standard error estimates corresponding to \code{x}.
}
}
\description{
This function takes a series of point estimates and their associated standard errors and
computes the p-value for the test of a monotone decrease in the
population prevalences (in sequence order).
The p-value for a monotone increase is
also reported. An optional plot of the estimates and the null distribution of the test statistics is provided.
More formally, let the \eqn{K} population prevalences in sequence order be \eqn{p_1, \ldots, p_K}.
We test the null hypothesis:\cr
\deqn{H_0 : p_1 = \ldots = p_K}
vs
\deqn{H_1 : p_1 \ge p_2 \ldots \ge p_K}
with at least one equality strict. A likelihood ratio statistic for this test has
been derived (Bartholomew 1959).
The null distribution of the likelihood ratio statistic is very complex
but can be determined by a simple Monte Carlo.\cr
The function requires the isotone library.
}
\examples{
d <- t(data.frame(estimate=c(0.16,0.15,0.3), sigma=c(0.04,0.04,0.1)))
colnames(d) <- c("time_1","time_2","time_3")
LRT.trend.test(d,number.of.bootstrap.samples=1000)
}
\author{
Mark S. Handcock
}
\references{
Bartholomew, D. J. (1959). A test of homogeneity for ordered alternatives. Biometrika 46 36-48.
}
\keyword{manip}
\keyword{survey}

