#' chatty
#'
#' When i ask chatgpt about coding question, i need to give it a sample of  my data
#'
#' @param mydata my current datatable that has problem need to ask chatgpt
#' @param n how many rows i want to send to chatgpt
#'
#' @return a JSON object that chatgpt can receive
#' @export
#'
#' @examples  chatty(iris, 1)
#' @importFrom magrittr %>%
#' @importFrom dplyr slice_sample
chatty <- function(mydata, n){
  mydata <- mydata %>% slice_sample(n = n, replace = FALSE)
  mydata <- jsonlite::toJSON(mydata, pretty = TRUE)
  return(mydata)
}
