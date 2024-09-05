test_that("create_project() creates a project", {
  dir <- withr::local_tempdir()

  create_pemr_project(
    dir,
    aoi_name = "test_aoi"
  )

  expect_snapshot_value(
    list.files(file.path(dir, "test_aoi"), recursive = TRUE, include.dirs = TRUE),
    style = "json2"
  )
})
