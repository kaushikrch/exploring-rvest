# Webscrapping with rvest

I was sifting through National Assessment and Accreditation Council (NAAC) [report](http://naac.du.ac.in/) for Delhi University. The report volumes are available as embedded image files, e.g. [Volume 1](http://naac.du.ac.in/naacvol1.htm).

The thought of downloading these image files to club them as a single pdf report led me to Hadley's [rvest package](http://cran.r-project.org/web/packages/rvest/) a wonderful [vignette](http://cran.r-project.org/web/packages/rvest/vignettes/selectorgadget.html) on using [SelectorGadget](http://selectorgadget.com/) to interactively identify what css selector you need to extract desired components from a page.

## base_spider function
This function scrapes through the web page of each volume to identify "#bb-bookblock img" node and download them into a specified destination folder.
