ductape_vs_opm
==============

A reproducible comparison between the [opm package](http://opm.dsmz.de) and the [DuctApe suite](http://combogenomics.github.io/DuctApe/).
The comparison is made on the ability of the two programs to extract the curve parameters from PM experiments.

Requirements
------------

* opm v0.9.1 or later
* DuctApe v0.14.2 or later
* sqlite3 (for the zmobilis comparison)

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

Z. mobilis dataset
------------------

The dataset from *Z. mobilis* ZM4 is used to understand wether DuctApe and opm can come to similar biological conclusions.

From the zmobilis command line:

Open [RStudio](http://www.rstudio.com/) or enter the R prompt

* source('opm.R')

From the command line

* ./prepare

* ./compare
