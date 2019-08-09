#' Log-cpm normalisation
#'
#' @inheritParams norm_scran
#' @inherit norm_scran return
#'
#' @export
norm_logcpm <- function(sce) {
    logcounts(sce) <- edgeR::cpm(counts(sce), log = TRUE)

    return(sce)
}
