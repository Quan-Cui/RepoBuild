#' create_subdirs
#'
#' @param folder path to the folder
#'
#' @return created some subfolder under the input folder
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
update_gitignore <- function(folder) {
  gitignore_path <- paste0(folder, "/", ".gitignore")
  if (file.exists(gitignore_path)) {
    writeLines(c(".Rproj.user", ".Rhistory", "*log*"), con = gitignore_path)
  }
}




#' create_subdirs for Boreal project
#'
#' @param folder path to the folder
#'
#' @returns structured folder
create_subdirs_Boral <- function(folder) {
  dir.create(paste0(folder, "/R"))
  dir.create(paste0(folder, "/data"))
  dir.create(paste0(folder, "/input"))
  dir.create(paste0(folder, "/input/LiDAR"))
  dir.create(paste0(folder, "/output"))
  dir.create(paste0(folder, "/output/GISdata"))
  dir.create(paste0(folder, "/output/GISdata/elevatr"))
  dir.create(paste0(folder, "/output/GISdata/DEM30"))
  dir.create(paste0(folder, "/output/GISdata/LiDAR"))
  dir.create(paste0(folder, "/", "output", "/", "storm_design"))
  dir.create(paste0(folder, "/", "output", "/", "SWMM"))
  dir.create(paste0(folder, "/", "HEC-RAS"))
  dir.create(paste0(folder, "/", "HY-8"))
  dir.create(paste0(folder, "/", "Flow Profile"))
}


