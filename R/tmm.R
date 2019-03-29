#' TMM normalisation
#'
#' @inheritParams norm_scran
#' @inherit norm_scran return
#'
#' @importFrom SingleCellExperiment sizeFactors sizeFactors<- counts
#'
#' @export
norm_TMM <- function(sce) {
    sizeFactors(sce) <- edgeR::calcNormFactors(counts(sce), method = "TMM")
    sce <- scater::normalize(sce)

    return(sce)
}
