#' Install all required dependencies for the BAGS app
#'
#' This function checks for missing packages and installs them.
#' @export
install_bags_dependencies <- function() {

  required <- c(
    "data.table", "stringr", "readr", "fingerprint", "dplyr",
    "ggplot2", "shiny", "shinyWidgets", "snakecase", "httr",
    "plyr", "crul"
  )

  missing <- required[!(required %in% installed.packages()[, "Package"])]

  if (length(missing) > 0) {
    message("Installing missing packages: ", paste(missing, collapse = ", "))
    install.packages(missing, dependencies = TRUE)
  } else {
    message("All packages already installed.")
  }
}


#' Run the BAGS Shiny App from GitHub
#'
#' This function launches the BAGS app hosted on GitHub.
#' @export
run_bags <- function() {

  if (!requireNamespace("shiny", quietly = TRUE)) {
    stop("The 'shiny' package is not installed. Run install_bags_dependencies() first.")
  }

  shiny::runGitHub("BAGS", "tadeu95")
}
