#' Attach PEMr packages
#'
#' Calling `run_pemr()` will attach all of the PEMr family of packages: `PEMprepr`,
#' `PEMsamplr`, and `PEMmodelr`.
#' 
#' @return TRUE or FALSE
#' @export
#' @author Genevieve Perkins
#' @examples
#' run_pemr()
run_pemr <- function(){

  pkgs <- c(
    "PEMprepr" #,
    # Omitting PEMsamplr and PEMmodelr for now as installation is failing
    # "PEMsamplr",
    # "PEMmodelr"
  )
  
  suppressPackageStartupMessages(
    lapply(pkgs, library, character.only = TRUE)
  )

}

