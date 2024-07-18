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
#' @examples create.repo("C:/myproject")
create.repo <- function(proj_folder = here::here()) {
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
