#' TMM with zero pairing normalisation
#'
#' @inheritParams norm_scran
#' @inherit norm_scran return
#'
#' @export
norm_TMM <- function(sce) {
    sizeFactors(sce) <- edgeR::calcNormFactors(counts(sce), method = "TMMwzp")
    sce <- scater::normalize(sce)

    return(sce)
}
