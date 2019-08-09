#' Scran normalisation
#'
#' @param sce the SingleCellExperiment object
#'
#' @return SingleCellExperiment object with logcounts slot containing normalised expression values
#'
#' @importFrom scran computeSumFactors
#' @importFrom scater normalize
#'
#' @export
norm_scran <- function(sce) {
    sce <- scran::computeSumFactors(sce)
    sce <- scater::normalize(sce) # goes to `logcounts` by default

    return(sce)
}
