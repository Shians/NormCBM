#' Linnorm normalisation
#'
#' @inheritParams norm_scran
#' @inherit norm_scran return
#'
#' @importFrom SingleCellExperiment sizeFactors sizeFactors<- counts
#'
#' @export
norm_linnorm <- function(sce) {
    logcounts(sce) <- Linnorm::Linnorm(counts(sce))

    return(sce)
}
