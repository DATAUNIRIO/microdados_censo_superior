

url<-"http://portal.inep.gov.br/microdados/"

#library(XML)
#library(RCurl)
# Pega a pagina toda
#html.doc <- getURL(url)  
#doc = htmlParse(html.doc, asText=TRUE)

# Pega a lista de links
#webpage <- readLines(tc <- textConnection(url)); close(tc)

# Raspagem de dados
library(rvest)     
page <- read_html(url)
page<-page %>% html_nodes('a') %>% html_attr('href')

# filtrando o censo da educacao superior
page<-page[282:305]
page

j<-1995:2018

for (i in 1:24) { 
  local<-paste0("C:/Users/Steven/Desktop/Microdados/Microdados_",j[i],".zip")
  Sys.sleep(3) ##Download the file 
  download.file(page[i], local, mode="wb")
  print(i) 
}