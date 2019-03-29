#' DESeq2 normalisation
#'
#' @inheritParams norm_scran
#' @inherit norm_scran return
#'
#' @importFrom SingleCellExperiment sizeFactors sizeFactors<- counts
#'
#' @export
norm_logCPM <- function(sce) {
    logcounts(sce) <- edgeR::cpm(counts(sce), log = TRUE)

    return(sce)
}
