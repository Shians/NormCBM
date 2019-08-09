context("Normalisation methods")

test_that(
    "Normalisation methods work for SingleCellExperiment", {
    data(sample_sce_data)
    sample_10x_data <- readRDS(cellbench_file("10x_sce_sample.rds"))

    expect_silent(norm_deseq2(sample_sce_data))
    expect_silent(norm_linnorm(sample_10x_data))
    expect_silent(norm_logcpm(sample_sce_data))
    expect_silent(norm_scran(sample_sce_data))
    expect_silent(norm_tmm(sample_sce_data))
    expect_silent(norm_tmmwzp(sample_sce_data))
    expect_silent(norm_scnorm(sample_sce_data))
})
