test_that("create_project() creates a project", {
  dir <- withr::local_tempdir()

  create_pemr_project(
    dir,
    aoi_name = "test_aoi"
  )

  expect_snapshot_value(
    list.files(fs::path(dir, "test_aoi"), recursive = TRUE, include.dirs = TRUE),
    style = "json2"
  )

  # Fills in project name in template
  expect_equal(
    readLines(fs::path(dir, "test_aoi", "01_prepr.R"))[3], 
    "project_name <- \"test_aoi\""
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