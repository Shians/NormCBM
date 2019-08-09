#' DESeq2 normalisation
#'
#' @inheritParams norm_scran
#' @inherit norm_scran return
#'
#' @export
norm_deseq2 <- function(sce) {
    sizeFactors(sce) <- DESeq2::estimateSizeFactorsForMatrix(counts(sce))
    sce <- scater::normalize(sce)

    return(sce)
}
