test_that("create_project() creates a project", {
  dir <- withr::local_tempdir()

  create_pemr_project(
    dir,
    aoi_name = "test_aoi",
    rstudio = TRUE
  )

  expect_snapshot_value(
    list.files(fs::path(dir, "test_aoi"), recursive = TRUE, include.dirs = TRUE),
    style = "json2"
  )

})

test_that("create_project() works with aoi gpkg", {
  dir <- withr::local_tempdir()

  create_pemr_project(
    dir,
    aoi_name = "test_aoi",
    aoi_file = fs::path_package("PEMprepr", "extdata/datecreek_aoi.gpkg")
  )

  expect_true(
    fs::file_exists(
      fs::path(dir, "test_aoi", "00_raw_inputs", "10_vector", "datecreek_aoi.gpkg")
    )
  )
})

test_that("create_project() when specified aoi pkg doesn't exist", {
  dir <- withr::local_tempdir()

  expect_warning(
    create_pemr_project(
      dir,
      aoi_name = "test_aoi",
      aoi_file = "foo.gpkg"
    )
  )
})
