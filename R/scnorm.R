#' SCnorm normalisation
#'
#' @inheritParams norm_scran
#' @inherit norm_scran return
#'
#' @export
norm_scnorm = function(sce) {
    SCnorm_out = SCnorm::SCnorm(
        Data = counts(sce),
        Conditions = rep(1, ncol(sce)),
        FilterCellNum = 10,
        NCores = 1
    )
    logcounts(sce) = log2(SingleCellExperiment::normcounts(SCnorm_out) + 1)

    return(sce)
}
