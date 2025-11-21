#' Show available commands in the bagsInstaller package
#'
#' @return A printed help menu listing all exported functions.
#' @export
bagsHelp <- function() {
  cat("\n=== bagsInstaller Help Menu ===\n\n")

  cat("Available Commands:\n")
  cat("1. install_bags_dependencies()  - Install all required CRAN and archived packages.\n")
  cat("2. run_bags()                    - Launch the BAGS application from GitHub.\n")
  cat("3. bagsHelp()                    - Display this help menu.\n\n")

  cat("Usage Example:\n")
  cat("   library(bagsInstaller)\n")
  cat("   install_bags_dependencies()\n")
  cat("   run_bags()\n")
  cat("   bagsHelp()\n\n")
}
