# Template script to prepare data for Predictive Ecological Mapping.
# this is the first script in a series of workflow

# project set up

library(PEMprepr)

project_name <- "{{ aoi_name }}"


fid <- read_fid()


# create base aoi layers

aoi <- snap_aoi()


# create base raster data for modelling 5m

create_template_raster()

create_bgc_template()



# create base raster data for landscape 25m

create_template_raster()

create_bgc_template()



# download all vector data layers

create_base_vectors()



# create dem layer

# 1) from cded

get_cded_dem()


# 2) from lidar

#get_lidar_dem() # placeholder



# generate the model covariates 5m

create_covariates()



# congratulations you are now ready to start developing the sample plan

