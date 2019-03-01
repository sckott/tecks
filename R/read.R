# py <- reticulate::import_builtins()

#' Read in a bibtex file
#' 
#' @export
#' @param path (character) a file path to a bibtex file
#' @return a python builtin object from \pkg{reticulate}
#' @examples
#' z <- system.file("extdata/bib-many.bib", package = "tecks")
#' out <- teck_read(path = z)
#' out
#' names(out)
#' # "entries" is the main thing you want most likely
#' out$entries
#' out$get_entry_dict
#' out$comments
#' out$get_entry_list
#' out$load_common_strings
teck_read <- function(path) {
  py <- reticulate::import_builtins()
  tmp <- py$open(path.expand(path))
  on.exit(tmp$close(), add = TRUE)
  res <- bparser$load(tmp)
  # with(py$open(path.expand(path)) %as% file, {
  #   res = bparser$load(file)
  # })
  return(res)
}
# with(py$open("/Users/sckott/Downloads/mrg.bib") %as% file, {
#   big = bparser$load(file)
# })
