% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/summary.odds.R
\name{summary.svyglm}
\alias{summary.svyglm}
\title{Summarizing Generalized Linear Model Fits with Odds Ratios for Survey Data}
\usage{
\method{summary}{svyglm}(object, correlation = FALSE, df.resid = NULL, ...)
}
\arguments{
\item{object}{an object of class \code{"svyglm"}, usually, a result of a call
to \code{\link[survey]{svyglm}}.}

\item{correlation}{logical; if \code{TRUE}, the correlation matrix of the
estimated parameters is returned and printed.}

\item{df.resid}{Optional denominator degrees of freedom for Wald tests.}

\item{\dots}{further arguments passed to or from other methods.}
}
\value{
\code{RDS::summary.svyglm} returns an object of class \code{"summary.svyglm.RDS"},
a list with components

\item{call}{the component from \code{object}.} \item{family}{the component
from \code{object}.} \item{deviance}{the component from \code{object}.}
\item{contrasts}{the component from \code{object}.} \item{df.residual}{the
component from \code{object}.} \item{null.deviance}{the component from
\code{object}.} \item{df.null}{the component from \code{object}.}
\item{deviance.resid}{the deviance residuals: see
\code{\link[survey]{residuals.svyglm}}.} \item{coefficients}{the matrix of
coefficients, standard errors, z-values and p-values.  Aliased coefficients
are omitted.} \item{aliased}{named logical vector showing if the original
coefficients are aliased.} \item{dispersion}{either the supplied argument or
the inferred/estimated dispersion if the latter is \code{NULL}.} \item{df}{a
3-vector of the rank of the model and the number of residual degrees of
freedom, plus number of coefficients (including aliased ones).}
\item{cov.unscaled}{the unscaled (\code{dispersion = 1}) estimated
covariance matrix of the estimated coefficients.} \item{cov.scaled}{ditto,
scaled by \code{dispersion}.} \item{correlation}{(only if \code{correlation}
is true.)  The estimated correlations of the estimated coefficients.}
\item{symbolic.cor}{(only if \code{correlation} is true.)  The value of the
argument \code{symbolic.cor}.}
}
\description{
\code{RDS::summary.svyglm} is a version of \code{summary.svyglm} that
reports odds-ratios in place of coefficients in the summary table.
This only applies for the \code{binomial} family. Otherwise it is identical to
\code{summary.svyglm}.
The default in \code{summary.svyglm} is to display the log-odds-ratios
and this displays the exponetiated from
and a 95% confidence interval in place of the standard errors and \code{z ratio} columns. The
p-values are still displayed.
}
\details{
\code{svyglm} fits a generalised linear model to data from a complex survey design, with
inverse-probability weighting and design-based standard errors.

There is no \code{anova} method for \code{svyglm} as the models are not
fitted by maximum likelihood.

See the manual page on \code{svyglm} for detail of that function.
}
\examples{
## For examples see example(svyglm)
}
\seealso{
\code{\link[survey]{svyglm}}, \code{\link{summary}}.
}
\keyword{models}
\keyword{regression}

