# RDS
Provides functionality for carrying out estimation with data collected using Respondent-Driven Sampling. This includes Heckathorn's RDS-I and RDS-II estimators as well as Gile's Sequential Sampling estimator. The package is part of the "RDS Analyst" suite of packages for the analysis of respondent-driven sampling data.


# Information

See: http://www.hpmrg.org and http://www.deducer.org/pmwiki/index.php?n=Main.RDSAnalyst


# Building and installing
Get the released version from CRAN:

```R
install.packages("RDS")
```

To build from this repository

```
R CMD build RDS
R CMD INSTALL RDS_*.*.tar.gz
```

Or simply

```R
# install.packages("devtools")
devtools::install_github("ifellows/RDS")
```