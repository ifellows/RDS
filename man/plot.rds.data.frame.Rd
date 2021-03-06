% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/rds.data.frame-plots.R
\name{plot.rds.data.frame}
\alias{plot.rds.data.frame}
\title{Diagnostic plots for the RDS recruitment process}
\usage{
\method{plot}{rds.data.frame}(x, plot.type = c("Recruitment tree",
  "Network size by wave", "Recruits by wave", "Recruits per seed",
  "Recruits per subject"), stratify.by = NULL, ...)
}
\arguments{
\item{x}{An rds.data.frame object.}

\item{plot.type}{the type of diagnostic.}

\item{stratify.by}{A factor used to color or stratify the plot elements.}

\item{...}{Additional arguments for the underlying plot function if applicable.}
}
\value{
Either nothing, or a ggplot2 object for plotting.
}
\description{
Diagnostic plots for the RDS recruitment process
}
\details{
Several types of diagnostics are supported by the plot.type argument.
'Recruitment tree' displays a network plot of the RDS recruitment process.
'Network size by wave' monitors systematic changes is network size based on how far subjects are from the seed
'Recruits by wave' displays counts of subjects based on how far they rare from their seed.
'Recruit per seed' shows the total tree size for each seed.
'Recruits per subject' shows counts of how many subjects are recruited by each subject who are non-terminal.
}
\examples{
\dontrun{
data(fauxmadrona)
plot(fauxmadrona)
plot(fauxmadrona, plot.type='Recruits by wave')
plot(fauxmadrona, plot.type='Recruits per seed')
plot(fauxmadrona, plot.type='Recruits per subject')
}
}

