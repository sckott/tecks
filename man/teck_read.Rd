% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/read.R
\name{teck_read}
\alias{teck_read}
\title{Read in a bibtex file}
\usage{
teck_read(path)
}
\arguments{
\item{path}{(character) a file path to a bibtex file}
}
\value{
a python builtin object from \pkg{reticulate}
}
\description{
Read in a bibtex file
}
\examples{
z <- system.file("extdata/bib-many.bib", package = "tecks")
out <- teck_read(path = z)
out
names(out)
# "entries" is the main thing you want most likely
out$entries
out$get_entry_dict
out$comments
out$get_entry_list
out$load_common_strings
}
