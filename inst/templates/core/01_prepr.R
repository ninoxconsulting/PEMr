# Template script to prepare data for Predictive Ecological Mapping

# project set up

library(PEMprepr)

project_name <- "{{ aoi_name }}"


fid <- read_fid()

# create base layers

aoi <- snap_aoi()


# download all vector data layers

create_base_vectors()




# download all raster data for modelling

create_template_raster()


# create a dem layer
# 1) from cded

get_cded_dem()

# 2) from lidar

#get_lidar_dem() # placeholder



# generate the model covariates



create_covariates()


# generate the sample plan (25m covariates)



# layer_options <- c(
#   "sinksfilled", "sinkroute", "dem_preproc", "slope_aspect_curve",
#   "tcatchment", "tca", "scatchment", "twi", "channelsnetwork",
#   "overlandflow", "overlandflow2", "multiresflatness", "multiresflatness2",
#   "multiresflatness3", "tri", "convergence", "openness",
#   "dah", "tpi", "ridgevalley", "mrn", "flowaccumulation",
#   "slopelength", "flowaccumulation2", "flowaccumulation3",
#   "flowpathlength", "flowpathlength2", "flowpathlength3", "lsfactor",
#   "solarrad", "convexity", "vertdistance", "tci_low",
#   "swi", "windexp", "texture", "protection", "vrm",
#   "mbi", "mscale_tpi", "relposition", "slopecurvatures",
#   "steepestslope", "upslopearea"
# )
#
# # run a test covariate
# create_covariates(
#   dtm = dem, ## raster created above
#   SAGApath = "C:/SAGA/saga-7.7.0_x64/", ## Where SAGA GIS is installed
#   output = file.path(fid$cov_dir_1020[2], "25m"), ## from the setup_folders above
#   layers = "sinksfilled"
# ) ## test one is working
#
# # run all covariates
# create_covariates(
#   dtm = dem, ## raster created above
#   SAGApath = "C:/SAGA/saga-7.7.0_x64/", ## Where SAGA GIS is installed
#   output = file.path(fid$cov_dir_1020[2], "25m"), ## from the setup_folders above
#   layers = c("all")
# ) ## use all or one of the above
#
#
# l <- list.files(
#   path = fid$cov_dir_1020[2], pattern = ".sdat$",
#   recursive = TRUE
# )
#


# Generate BEC template

create_bgc_template()


# congratulations you are now ready to start developing the sample plan

