#' @export
all_norm_methods <- function() {
    list(
        "deseq2" = norm_deseq2,
        "linnorm" = norm_linnorm,
        "logcpm" = norm_logcpm,
        "scnorm" = norm_scnorm,
        "scran" = norm_scran,
        "sctransform" = norm_sctransform,
        "tmm" = norm_tmm,
        "tmmwzp" = norm_tmmwzp
    )
}
