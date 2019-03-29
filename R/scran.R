#' Scran normalisation
#'
#' @param sce the SingleCellExperiment object
#'
#' @return
#'
#' @importFrom scran computeSumFactors
#' @importFrom scater normalize
#' @export
scran_norm <- function(sce) {
    sce <- scran::computeSumFactors(sce)
    sce <- scran::normalize(sce) # goes to `logcounts` by default

    return(sce)
}