#' sctransform normalisation
#'
#' @inheritParams norm_scran
#' @inherit norm_scran return
#'
#' @export
norm_sctransform <- function(sce) {
    vst_out <- sctransform::vst(
        counts(sce),
        return_gene_attr = FALSE,
        show_progress = FALSE
    )
    logcounts(sce) <- vst_out$y

    return(sce)
}
