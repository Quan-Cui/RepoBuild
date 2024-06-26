#' create.repo
#'
#' Create a folder structure within your project path.including data, input, output, R etc.
#'
#' @param proj_folder R project folder name, default here::here()
#'
#' @return a folder full with sub folders for R project developing use
#' @importFrom usethis create_project
#' @export
#'
#' @examples create.repo()
create.repo <- function(proj_folder = here::here()) {

  create_subdirs <- function(folder) {
    dir.create(paste0(folder, "/", "R"))
    dir.create(paste0(folder, "/", "R", "/", "functions"))
    dir.create(paste0(folder, "/", "data"))
    dir.create(paste0(folder, "/", "input"))
    dir.create(paste0(folder, "/", "output"))
    dir.create(paste0(folder, "/", "output", "/", "figures"))
    dir.create(paste0(folder, "/", "output", "/", "tables"))
    dir.create(paste0(folder, "/", "instructions"))
  }

  update_gitignore <- function(folder) {
    gitignore_path <- paste0(folder, "/", ".gitignore")
    if (file.exists(gitignore_path)) {
      writeLines(c(".Rproj.user", ".Rhistory", "*log*"), con = gitignore_path)
    }
  }

  invisible(
    if (!dir.exists(proj_folder)) {
      dir.create(proj_folder)
      usethis::create_project(proj_folder)
      create_subdirs(proj_folder)
      update_gitignore(proj_folder)
      message(paste("Done. Created subfolders for a new folder", proj_folder))
    } else {
      usethis::create_project(proj_folder)
      create_subdirs(proj_folder)
      update_gitignore(proj_folder)
      message(paste("Done. Created subfolders for an existing folder", proj_folder))
    }
  )
}
