


google_translate <- function(text, target_language = "en", source_language = "auto") {


    text <- urltools::url_encode(text)

  formatted_text <- stringr::str_replace_all(text, " ", "%20")

  formatted_link <- paste0("https://translate.google.com/m?tl=",
                           target_language, "&sl=", source_language,
                           "&q=",
                           formatted_text)

  response <- httr::GET(formatted_link)

  translation <- httr::content(response) %>%
    rvest::html_nodes("div.result-container") %>%
    rvest::html_text()

  translation <- urltools::url_decode(translation)
  translation <- gsub("\n", "", translation)

  return(translation)

}

google_translate(text = "私は日本語が話せます。",source_language = "ja",target_language = "en")
