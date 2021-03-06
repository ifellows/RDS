% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/rds-doc.R
\docType{data}
\name{fauxmadrona}
\alias{fauxmadrona}
\alias{fauxmadrona.network}
\title{A Simulated RDS Data Set with no seed dependency}
\format{An \code{rds.data.frame}}
\source{
The original network is included as
\code{fauxmadrona.network} as a \code{network} object.  \cr The data set
also includes the \code{data.frame} of the RDS data set as
\code{fauxmadrona}.  \cr Use \code{data(package="RDS")} to get a full list
of datasets.
}
\description{
This is a faux set used to illustrate how the estimators perform under
different populations and RDS schemes.
}
\details{
The population had N=1000 nodes.  In this case, the sample size is 500 so
that there is a relatively small sample fraction (50\%). There is homophily
on disease status (R=5) and there is differential activity by disease status
whereby the infected nodes have mean degree twice that of the uninfected
(w=1.8).

In the sampling, the seeds are chosen randomly from the full population, so
there is no dependency induced by seed selection.

Each sample member is given 2 uniquely identified coupons to distribute to
other members of the target population in their acquaintance.  Further each
respondent distributes their coupons completely at random from among those
they are connected to.



Here are the results for this data set and the sister \code{fauxsycamore}
data set:

\tabular{rlllllll}{ \bold{Name} \tab \bold{City} \tab \bold{Type} \tab
\bold{Mean} \tab \bold{RDS I (SH)} \tab \bold{RDS II (VH)} \tab \bold{SS}
\cr fauxsycamore \tab Oxford\tab seed dependency, 70\% \tab
0.2408 \tab 0.1087 \tab 0.1372 \tab 0.1814\cr fauxmadrona \tab
Seattle\tab no seed dependency, 50\% \tab 0.2592 \tab 0.1592 \tab 0.1644
\tab 0.1941}

Even with only 50\% sample, the VH is substantially biased , and the SS
does much better.
}
\references{
Gile, Krista J., Handcock, Mark S., 2010 \emph{Respondent-driven
Sampling: An Assessment of Current Methodology}, \emph{Sociological
Methodology}, 40, 285-327.
}
\seealso{
\code{\link{fauxsycamore}}, \code{\link{faux}}
}
\keyword{datasets}

