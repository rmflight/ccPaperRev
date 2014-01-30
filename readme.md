# ccPaperRev

This is work to address reviewer comments on the **categoryCompare** publication and make it easier to work with. To allow testing and incorporation of new features for the reviewers, a specific branch of the **categoryCompare** Bioconductor package now exists in the public repository based on the most recent Bioconductor release. This can be installed using 

## Installation 

```r
source("http://bioconductor.org/biocLite.R")
library(BiocInstaller)
biocLite(c("KEGG.db", "GO.db", "categoryCompare")) # install current bioconductor version
install_github("categoryCompare", username="rmflight", ref="paperRev", quick=TRUE) # install the version for ccPaperRev
```

Note that the `quick=TRUE` part is required if running an up-to-date version of `devtools`.

This will install the package **categoryComparePaperRev**, thus named so that it does not change any other version of **categoryCompare** previously installed. Note that the **categoryComparePaperRev** package should be installed prior to installing this package, as this one depends on it.

## Installation

```r
library(devtools)
library(BiocInstaller)
biocLite(c("ALL", "hgu95av.db", "hgu133plus2.db", "limma")) # other required packages
library(devtools)
install_github("ccPaperRev", "rmflight", quick=TRUE) # install this package
```

