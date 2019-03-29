context("Normalisation methods")

test_that(
    "Normalisation methods work for SingleCellExperiment", {
    data(sample_sce_data)

    expect_warning(norm_scran(sample_sce_data))
})
