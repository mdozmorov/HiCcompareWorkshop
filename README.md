<!--[![Build Status](https://travis-ci.org/dozmorovlab/HiCcompareWorkshop.svg?branch=master)](https://travis-ci.com/github/dozmorovlab/HiCcompareWorkshop/builds)-->

![.github/workflows/basic_checks.yaml](https://github.com/mdozmorov/HiCcompareWorkshop/workflows/.github/workflows/basic_checks.yaml/badge.svg)

# Detection of Differentially Interacting Chromatin Regions From Multiple Hi-C Datasets

This tutorial is an introductory guide into differential Hi-C data analysis. It includes joint normalization of Hi-C data matrices and the detection of differential chromatin interactions. Hi-C data formats are introduced, as well as methods for  preprocessing introduced. Examples of downstream analysis of differentially interacting chromatin regions and guidelines on how to visualize and interpret the results are also provided.

```
if(!require(devtools)) install.packages("devtools")
devtools::install_github(repo = "mdozmorov/HiCcompareWorkshop", build_vignettes = TRUE)
```

If installation fails due to missing packages, install them like:

```
if(!require(BiocManager)) install.packages("BiocManager")
BiocManager::install("multiHiCcompare")
BiocManager::install("clusterProfiler")
BiocManager::install("ROntoTools")
BiocManager::install("DO.db")
```

Please, refer to the [hic_tutorial.Rmd](vignettes/hic_tutorial.Rmd) vignette for more details. This workshop is based on the [Paper: Stansfield et al., “R Tutorial: Detection of Differentially Interacting Chromatin Regions From Multiple Hi-C Datasets.”](https://currentprotocols.onlinelibrary.wiley.com/doi/abs/10.1002/cpbi.76). The workshop demonstrates functionality of the following R packages:

* [HiCcompare](https://www.bioconductor.org/packages/HiCcompare)
* [multiHiCcompare](https://bioconductor.org/packages/multiHiCcompare)

[HiCcompareWorkshop pkgdown website](https://mdozmorov.github.io/HiCcompareWorkshop/)

[HiCcompareWorkshop Docker image](https://hub.docker.com/repository/docker/mdozmorov/hiccompareworkshop)

The tutorial has been developed to be presented at the [Bioconductor Virtual Conference 2020](https://bioc2020.bioconductor.org/), July 30, 2020, 10:00-10:55am

