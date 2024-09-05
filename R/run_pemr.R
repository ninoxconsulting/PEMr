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
    loaded <- vapply(pkgs, require, character.only = TRUE, FUN.VALUE = logical(1))
  )

  if (any(loaded)) {
    cli::cli_alert_success("loaded package{?s}: {.emph {pkgs[loaded]}}")
  }

  if (any(!loaded)) {
    cli::cli_alert_danger("Failed to load package{?s}: {.emph {pkgs[!loaded]}}")
  }

  invisible(TRUE)

  }

