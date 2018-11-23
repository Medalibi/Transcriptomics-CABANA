if (!requireNamespace("BiocManager"))
    install.packages("BiocManager")
BiocManager::install(ask=FALSE)
BiocManager::install(c("devtools","dplyr","gplots","ggplot2","genefilter","ballgown","edgeR","GenomicRanges","rhdf5","biomaRt"), ask=FALSE)
