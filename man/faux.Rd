% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/rds-doc.R
\docType{data}
\name{faux}
\alias{faux}
\title{A Simulated RDS Data Set}
\format{An rds.data.frame object}
\description{
This is a faux set used to demonstrate RDS functions and analysis.
It is used is some simple examples and has categorical variables "X", "Y" and "Z".
}
\examples{
data(faux)
RDS.I.estimates(rds.data=faux,outcome.variable='X')
}
\references{
Gile, Krista J., Handcock, Mark S., 2010 \emph{Respondent-driven Sampling: An Assessment of Current Methodology},  \emph{Sociological Methodology}, 40, 285-327.
}
\seealso{
\code{\link{fauxsycamore}}, \code{\link{fauxmadrona}}
}
\keyword{datasets}

