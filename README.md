
<!-- README.md is generated from README.Rmd. Please edit that file -->

# CNVds

<!-- badges: start -->
<!-- badges: end -->

## Description

‘CNVds’ is an R package developed to evaluate the pathogenicities of
human CNVs based on the dosage sensitivity scores of the genes that are
encompassed within. Dosage sensitivity (DS) refers to the phenotypic
changes a gene may produce due to changes in its copy numbers. This
package focuses on the following three score metrics: \* Probability of
loss intolerance (pLI): the probability that a gene is intolerant to a
loss of function mutation. \* Probability of haploinsufficiency (pHI):
the probability that a gene is copy number loss. \* Probability of
triplosensitivity (pTS): the probability that the gene is sensitive to
copy number gain. The reference DS scores are based on recent
publications of genome-wide dosage sensitivity mappings. Compared to
measuring CNV purely based on their physical attributes (e.g. size,
number of genes, or know association with disease), DS scores provide
additional metrics that are useful in the systematic identification of
pathogenic CNVs.

This package is developed for BCB410H: Applied Bioinformatics at the
University of Toronto, Canada.

## Installation

You can install the development version of CNVds from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("jenydu/CNVds")
```

## Overview

``` r
ls("package:CNVds")
data(package = "CNVds") 
browseVignettes("CNVds")
```

`CNVds` currently contains 8 functions:

![](./inst/extdata/DU_J_A1.png)

## Contributions

## References

Alexander-Bloch, A. et al. (2022). Copy number variant risk scores
associated with cognition, psychopathology, and brain structure in
youths in the philadelphia neurodevelopmental cohort. *JAMA Psychiatry*
79, 699–709. <https://doi.org/10.1001/jamapsychiatry.2022.1017>

Collins, R. L. et al. (2022). A cross-disorder dosage sensitivity map of
the human genome. *Cell* 185, 3041-3055.e25.
<https://doi.org/10.1016/j.cell.2022.06.036>

Karczewski, K. J. et al. (2020). The mutational constraint spectrum
quantified from variation in 141,456 humans. *Nature* 581, 434–443.
<https://doi.org/10.1038/s41586-020-2308-7>

Ming, C, Wang, M, Wang, Q, et al. (2022). Whole genome sequencing–based
copy number variations reveal novel pathways and targets in Alzheimer’s
disease. *Alzheimer’s & Dementia* 18, 1846-1867.
<https://doi.org/10.1002/alz.12507>

## Acknowledgements

This package was developed as part of an assessment for 2019-2022
BCB410H: Applied Bioinformatics course at the University of Toronto,
Toronto, CANADA. `CNVds` welcomes issues, enhancement requests, and
other contributions. To submit an issue, use the [GitHub
issues](https://github.com/jenydu/CNVds/issues). Many thanks to those
who provided feedback to improve this package.
