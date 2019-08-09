#' TMM normalisation
#'
#' @inheritParams norm_scran
#' @inherit norm_scran return
#'
#' @export
norm_tmm <- function(sce) {
    sizeFactors(sce) <- edgeR::calcNormFactors(counts(sce), method = "TMM")
    sce <- scater::normalize(sce)

    return(sce)
}
