
thesaurus_synonims <- function(text) {


  text <- urltools::url_encode(text)

  formatted_text <- stringr::str_replace_all(text, " ", "%20")

  formatted_link <- paste0("https://www.thesaurus.com/browse/",
                           formatted_text)

  response <- httr::GET(formatted_link)

  translation <- httr::content(response) %>%
    rvest::html_nodes("#meanings") %>%
    rvest::html_nodes("li")%>%
    rvest::html_nodes("a")%>%
    rvest::html_text()


  return(c(text, translation))

}
