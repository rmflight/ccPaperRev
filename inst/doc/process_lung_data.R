
## ----customCSS, include=FALSE--------------------------------------------
cssFile <- system.file("extdata", "style.css", package="ccPaper")
options(markdown.HTML.stylesheet = cssFile)


## ----downloadData, eval=FALSE--------------------------------------------
## download.file("ftp://ftp.ncbi.nlm.nih.gov/geo/series/GSE18nnn/GSE18842/matrix/GSE18842_series_matrix.txt.gz", "/mlab/data/rmflight/Documents/projects/work/ccPaper/otherData/GSE18842_series_matrix.txt.gz")


## ----loadResave, eval=FALSE----------------------------------------------
## library(GEOquery)
## lung <- getGEO(filename="otherData/GSE18842_series_matrix.txt.gz")
## tmpP <- pData(lung)
## tmpP <- tmpP[,c("title", "geo_accession", "platform_id", "data_processing", "supplementary_file", "source_name_ch1", "characteristics_ch1", "characteristics_ch1.1")]
## pData(lung) <- tmpP
## 
## tmpF <- fData(lung)
## tmpF <- tmpF[, c("ID", "GB_ACC", "SPOT_ID", "Annotation Date", "Sequence Type", "Sequence Source", "Target Description", "Representative Public ID", "Gene Title", "Gene Symbol", "ENTREZ_GENE_ID", "RefSeq Transcript ID")]
## fData(lung) <- tmpF
## save(lung, file="inst/data/lung.RData", compress="xz")


