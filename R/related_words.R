related_words <- function(text = "word", n = 0) {

require(httr)

cookies = c(
  `_gat` = "1"
)

headers = c(
  `authority` = "relatedwords.org",
  `accept` = "*/*",
  `accept-language` = "en-US,en;q=0.9",
  `referer` = "https://relatedwords.org/relatedto/breakfast",
  `sec-ch-ua` = '"Chromium";v="110", "Not A(Brand";v="24", "Google Chrome";v="110"',
  `sec-ch-ua-mobile` = "?0",
  `sec-ch-ua-platform` = '"Windows"',
  `sec-fetch-dest` = "empty",
  `sec-fetch-mode` = "cors",
  `sec-fetch-site` = "same-origin",
  `user-agent` = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36"
)

params = list(
  `term` = text
)

res <- httr::GET(url = "https://relatedwords.org/api/related", httr::add_headers(.headers=headers), query = params, httr::set_cookies(.cookies = cookies))



dat <- content(res, as = "text",encoding = "UTF-8" )




dat <- jsonlite::fromJSON(dat)


Data <- data.frame(dat)

Data <- Data%>%
          dplyr::filter(score > 1.5)

Data <- head(Data,n = n-1)


return(c(text, Data$word))

}

