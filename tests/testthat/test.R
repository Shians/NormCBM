context("Normalisation methods")

test_that(
    "Normalisation methods work for SingleCellExperiment", {
    data(sample_sce_data)

    expect_silent(normalise_lib_size(sample_sce_data))
    expect_warning(normalise_scran(sample_sce_data))
})
