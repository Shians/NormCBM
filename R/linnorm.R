#' Linnorm normalisation
#'
#' @inheritParams norm_scran
#' @inherit norm_scran return
#'
#' @export
norm_linnorm <- function(sce) {
    logcounts(sce) <- Linnorm::Linnorm(counts(sce))

    return(sce)
}
