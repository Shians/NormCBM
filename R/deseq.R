#' DESeq2 normalisation
#'
#' @inheritParams norm_scran
#' @inherit norm_scran return
#'
#' @importFrom SingleCellExperiment sizeFactors sizeFactors<- counts
#'
#' @export
norm_DESeq2 <- function(sce) {
    sizeFactors(sce) <- DESeq2::estimateSizeFactorsForMatrix(counts(sce))
    sce <- scater::normalize(sce)

    return(sce)
}
