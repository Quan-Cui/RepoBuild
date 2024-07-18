#' create_subdirs
#'
#' @param folder path to the folder
#'
#' @return created some subfolder under the input folder
#'
#' @export
#'
#' @examples create_subdirs("C:/myproject")
create_subdirs <- function(folder) {
  dir.create(paste0(folder, "/", "R"))
  dir.create(paste0(folder, "/", "data"))
  dir.create(paste0(folder, "/", "input"))
  dir.create(paste0(folder, "/", "output"))
  dir.create(paste0(folder, "/", "output", "/", "figures"))
  dir.create(paste0(folder, "/", "output", "/", "tables"))
  dir.create(paste0(folder, "/", "instructions"))
}



#' update_gitignore
#'
#' @param folder path to the project folder
#'
#' @return a new gitignore file with some default settings
#'
#' @export
#'
#' @examples update_gitignore("C:/myproject")
update_gitignore <- function(folder) {
  gitignore_path <- paste0(folder, "/", ".gitignore")
  if (file.exists(gitignore_path)) {
    writeLines(c(".Rproj.user", ".Rhistory", "*log*"), con = gitignore_path)
  }
}
