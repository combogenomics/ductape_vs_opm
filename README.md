ductape_vs_opm
==============

A reproducible comparison between the [opm package](http://opm.dsmz.de) and the [DuctApe suite](http://combogenomics.github.io/DuctApe/).
The comparison is made on the ability of the two programs to extract the curve parameters from PM experiments.

Requirements
------------

* opm v0.9.1 or later
* DuctApe v0.9.2 or later

Howto
-----

Open [RStudio](http://www.rstudio.com/) or enter the R prompt

* source('opm.R')

From the command line

* ./prepare

* ./compare

Details
-------

The comparison is made between those curves having AV >= 3 (AV max 4), according to DuctApe.
This is done to minimize the impact of small differences in very low curves, then concentrating the analysis on significative differences.

The difference between two parameters is defined as (Vo - Vd)/Vd, where Vo and Vd are the parameters estimated by opm and DuctApe, respectively.
