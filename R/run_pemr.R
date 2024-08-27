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

  library(PEMprepr)
  library(PEMsamplr)
  library(PEMmodelr)

}
