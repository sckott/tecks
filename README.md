tecks
========



[![Project Status: WIP – Initial development is in progress, but there has not yet been a stable, usable release suitable for the public.](https://www.repostatus.org/badges/latest/wip.svg)](https://www.repostatus.org/#wip)
[![Build Status](https://travis-ci.com/sckott/tecks.svg?branch=master)](https://travis-ci.com/sckott/tecks)

Wrapper for Python's [bibtexparser](https://bibtexparser.readthedocs.io) [src](https://github.com/sciunto-org/python-bibtexparser)

the `bibtex` pkg may or may not be getting attention moving forward - maybe this will help in the meantime ...

**BEWARE: VERY ALPHA**

## Installation


```r
remotes::install_github("sckott/tecks")
```


```r
library("tecks")
```

## read bibtex file


```r
z <- system.file("extdata/bib-many.bib", package = "tecks")
out <- teck_read(path = z)
out
#> <bibtexparser.bibdatabase.BibDatabase>
names(out)
#>  [1] "add_missing_from_crossref" "comments"                 
#>  [3] "entries"                   "entries_dict"             
#>  [5] "entry_sort_key"            "expand_string"            
#>  [7] "get_entry_dict"            "get_entry_list"           
#>  [9] "load_common_strings"       "preambles"                
#> [11] "strings"
```

`entries` is probably the thing you want


```r
out$entries
#> [[1]]
#> [[1]]$journal
#> [1] "{BioScience}"
#> 
#> [[1]]$title
#> [1] "Spatial Gaps in Global Biodiversity Information and the Role of Citizen Science"
#> 
#> [[1]]$author
#> [1] "Tatsuya Amano and James D. L. Lamming and William J. Sutherland"
#> 
#> [[1]]$pages
#> [1] "393--400"
#> 
#> [[1]]$number
#> [1] "5"
#> 
#> [[1]]$volume
#> [1] "66"
#> 
#> [[1]]$publisher
#> [1] "Oxford University Press ({OUP})"
#> 
#> [[1]]$month
#> [1] "mar"
#> 
#> [[1]]$year
#> [1] "2016"
#> 
#> [[1]]$url
#> [1] "http://dx.doi.org/10.1093/biosci/biw022"
#> 
#> [[1]]$doi
#> [1] "10.1093/biosci/biw022"
#> 
#> [[1]]$ENTRYTYPE
#> [1] "article"
#> 
#> [[1]]$ID
#> [1] "Amano_2016"
#> 
#> 
#> [[2]]
#> [[2]]$journal
#> [1] "Ecological Applications"
#> 
#> [[2]]$title
#> [1] "Long-lasting effects of land use history on soil fungal communities in second-growth tropical rain forests"
#> 
#> [[2]]$author
#> [1] "Benedicte Bachelot and Mar{\\'{\\i}}a Uriarte and Jess K. Zimmerman and Jill Thompson and Jonathan W. Leff and Ava Asiaii and Jenny Koshner and Krista McGuire"
#> 
#> [[2]]$publisher
#> [1] "Wiley-Blackwell"
#> 
#> [[2]]$month
#> [1] "mar"
#> 
#> [[2]]$year
#> [1] "2016"
#> 
#> [[2]]$url
#> [1] "http://dx.doi.org/10.1890/15-1397.1"
#> 
#> [[2]]$doi
#> [1] "10.1890/15-1397.1"
#> 
#> [[2]]$ENTRYTYPE
#> [1] "article"
#> 
#> [[2]]$ID
#> [1] "Bachelot_2016"
```

## Meta

* Please [report any issues or bugs](https://github.com/sckott/tecks/issues).
* License: MIT
* Get citation information for `tecks` in R doing `citation(package = 'tecks')`
* Please note that this project is released with a [Contributor Code of Conduct](CODE_OF_CONDUCT.md). By participating in this project you agree to abide by its terms.
