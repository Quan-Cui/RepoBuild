#' create.repo
#'
#' Create a folder structure within your project path.including data, input, output, R etc.
#'
#' @param proj_folder R project folder name, default here::here()
#'
#' @return a folder full with sub folders for R project developing use
#' @export
#'
#' @examples create.repo()


create.repo <- function(proj_folder = here::here()){
  invisible(
    if (!dir.exists(proj_folder)){
      dir.create(proj_folder)
      dir.create(paste0(proj_folder, "/", "R"))
      dir.create(paste0(proj_folder, "/", "R", "/", "functions"))
      dir.create(paste0(proj_folder, "/", "data"))
      dir.create(paste0(proj_folder, "/", "input"))
      dir.create(paste0(proj_folder, "/", "output"))
      dir.create(paste0(proj_folder, "/", "output", "/", "figures"))
      dir.create(paste0(proj_folder, "/", "output", "/", "tables"))
      dir.create(paste0(proj_folder, "/", "instructions"))
      file.create(paste0(proj_folder, "/", ".gitignore"))
      file.create(paste0(proj_folder, "/", "README.md"))
      message(paste("Done. Created subfolders for a new folder", proj_folder))
    } else{
      dir.create(paste0(proj_folder, "/", "R"))
      dir.create(paste0(proj_folder, "/", "R", "/", "functions"))
      dir.create(paste0(proj_folder, "/", "data"))
      dir.create(paste0(proj_folder, "/", "input"))
      dir.create(paste0(proj_folder, "/", "output"))
      dir.create(paste0(proj_folder, "/", "output", "/", "figures"))
      dir.create(paste0(proj_folder, "/", "output", "/", "tables"))
      dir.create(paste0(proj_folder, "/", "instructions"))
      file.create(paste0(proj_folder, "/", ".gitignore"))
      file.create(paste0(proj_folder, "/", "README.md"))
      message(paste("Done. Created subfolders for an exisiting folder", proj_folder))
    }
  )
}

