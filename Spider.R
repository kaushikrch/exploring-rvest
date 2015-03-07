setwd("C:/Users/k.roy.chowdhury/Documents/NAAC_Report")

library(rvest)
base_spider <- function(web.url){
  #make the html
  web.html <- html(web.url)
  #Scrape all url "img" from the main url
  web.html_href <- web.html %>%
    html_nodes("#bb-bookblock img") %>%
    html_attr("src")
  web.html_href_paste <- paste0("http://www.naac.du.ac.in/",web.html_href)
  dest_file <- function(x) unlist(strsplit(x, "/"))[grep(".jpg", unlist(strsplit(x, "/")))]
  down.file <- function(x) download.file(x, dest_file(x), mode = "wb", cacheOK = FALSE)
 sapply(web.html_href_paste, down.file)
}



#Vol1:
#base_spider("http://www.naac.du.ac.in/naacvol1.htm")


#Vol2:
#base_spider("http://www.naac.du.ac.in/naacvol2.htm")

#Vol3:
#base_spider("http://www.naac.du.ac.in/naacvol3.htm")

#Vol4:
#base_spider("http://www.naac.du.ac.in/naacvol4.htm")
