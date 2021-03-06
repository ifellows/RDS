% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/summary.odds.R
\name{print.summary.svyglm.RDS}
\alias{print.summary.svyglm.RDS}
\title{Summarizing Generalized Linear Model Fits with Odds Ratios}
\usage{
\method{print}{summary.svyglm.RDS}(x, digits = max(3, getOption("digits") -
  3), symbolic.cor = x$symbolic.cor,
  signif.stars = getOption("show.signif.stars"), ...)
}
\arguments{
\item{x}{an object of class \code{"summary.svyglm.RDS"}, usually, a result of a
call to \code{RDS::summary.svyglm}.}

\item{digits}{the number of significant digits to use when printing.}

\item{symbolic.cor}{logical. If \code{TRUE}, print the correlations in a
symbolic form (see \code{\link{symnum}}) rather than as numbers.}

\item{signif.stars}{logical. If \code{TRUE}, \sQuote{significance stars} are
printed for each coefficient.}

\item{\dots}{further arguments passed to or from other methods.}
}
\description{
\code{print.summary.svyglm.RDS} is a version of \code{print.summary.svyglm} that
reports odds-ratios in place of coefficients in the summary table.
This only applies for the \code{binomial} family. Otherwise it is identical to
\code{print.summary.svyglm}.
The default in\cr
\code{print.summary.svyglm} is to display the log-odds-ratios
and this displays the exponetiated from
and a 95% confidence interval in place of the standard errors and \code{z ratio} columns. The
p-values are still displayed.
}
\examples{
## For examples see example(svyglm)
}
\seealso{
\code{\link[survey]{svyglm}}, \code{\link[survey]{summary.svyglm}}.
}
\keyword{models}
\keyword{regression}

