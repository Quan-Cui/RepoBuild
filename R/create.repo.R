#' create.repo
#'
#' Create a folder structure within your project path.including data, input, output, R etc.
#'
#' @param proj_name R project folder name
#' @param proj_path R project path, end without /
#'
#' @return a folder full with sub folders for R project developing use
#' @export
#'
#' @examples create.repo(proj_name = "abc9368-2022", proj_path = "C:/Git")


create.repo <- function(proj_name = "abc9368-2022",
                        proj_path = "C:/QuanGit"){

  proj_folder <- paste0(proj_path, "/", proj_name)
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



#' chatgpt
#'
#' When i ask chatgpt about coding question, i need to give it a sample of  my data
#'
#' @param mydata my current datatable that has problem need to ask chatgpt
#' @param n how many rows i want to send to chatgpt
#'
#' @return a JSON object that chatgpt can receive
#' @export
#'
#' @examples  chatgpt(iris, 1)
#' @importFrom magrittr %>%
#' @importFrom dplyr slice_sample
chatgpt <- function(mydata, n){
  mydata <- mydata %>% slice_sample(n = n, replace = FALSE)
  mydata <- jsonlite::toJSON(mydata, pretty = TRUE)
  return(mydata)
}


