# RDS

This package provides functionality for carrying out estimation with data collected using Respondent-Driven Sampling. 

This includes Heckathorn's RDS-I and RDS-II estimators as well as Gile's Sequential Sampler estimator.
    
 * allowing for the computation of new and existing estimators and standard errors
 * visualization of recruitment chains
 * diagnostic analysis
 * allows for the analysis of multiple variables at once
    
    
Provides functionality for carrying out estimation with data collected using Respondent-Driven Sampling. This includes Heckathorn's RDS-I and RDS-II estimators as well as Gile's Sequential Sampling estimator. 


# Information

See: [hpmrg](http://www.hpmrg.org) and [RDSAnalyst Wiki](http://www.deducer.org/pmwiki/index.php?n=Main.RDSAnalyst).

Please consult the package vignette for a detailed walk-through 


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

    
#### Building package documentation 

`devtools::document()`

`devtools::check(document = FALSE)`

`pkgdown::build_site()`
