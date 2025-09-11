#' RepoBuild
#'
#' Create a folder structure within your project path.including data, input, output, R etc.
#'
#' @param proj_folder Complete path to the R project folder with folder name
#'
#' @return a folder full with sub folders for R project developing use
#' @importFrom usethis create_project
#' @export
#'
#' @examples
#' \dontrun{
#' RepoBuild("C:/myproject1")
#' }
RepoBuild <- function(proj_folder = getwd()) {
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



#' RepoBuild Boreal
#'
#' Create a folder structure within your project path.Designed for Boreal
#'
#' @param proj_folder your project folder
#'
#' @returns Structured folder
#' @importFrom usethis create_project
#' @export
#'
#' @examples
#'  \dontrun{
#' RepoBuild_Boreal("C:/myproject1")
#' }
RepoBuild_Boreal <- function(proj_folder = getwd()){
  invisible(
    if (!dir.exists(proj_folder)) {
      dir.create(proj_folder)
      usethis::create_project(proj_folder)
      create_subdirs_Boral(proj_folder)
      update_gitignore(proj_folder)
      message(paste("Done. Created subfolders for a new folder", proj_folder))
    } else {
      usethis::create_project(proj_folder)
      create_subdirs_Boral(proj_folder)
      update_gitignore(proj_folder)
      message(paste("Done. Created subfolders for an existing folder", proj_folder))
    }
  )
}



