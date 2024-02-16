#' zipit
#'
#' zip file with zip
#'
#' @param filepath the path to the file
#'
#' @export
#'
#' @examples
#' foo <- tempfile(fileext = ".txt")
#' cat(file = foo, "Hello world!")
#' zipit(foo)
zipit <- function(filepath){
  utils::zip(zipfile = paste0(filepath, ".zip"), files = filepath)
}

#' gzipit
#'
#' zip file with gzip
#'
#' @param filepath the path to the file
#'
#' @export
#'
#' @examples
#' foo <- tempfile(fileext = ".txt")
#' cat(file = foo, "Hello world!")
#' gzipit(foo)
gzipit <- function(filepath){
  R.utils::gzip(filepath)
}
