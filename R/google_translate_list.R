#' Translate a text vector using google translate with autodetected source text.
#'
#' @param text_vector This is the vector containing the texts that you want to translate.
#' @param target_lang This is the language that you want to translate the text into.
#' The default value for this argument is "en" for English.
#'
#' @return translated_vector.
#' @export
#'
#' @examples
#'\donttest{
#'text_vector <- c("Hello, how are you?", "Je ne parle pas français", "私は日本語が話せます。")
#'translate_text_vector(text_vector, "es")
#'}



google_translate_list <- function(text_vector, target_lang) {
  translated_vector <- character(length(text_vector))
  for (i in seq_along(text_vector)) {
    translated_vector[i] <- LinguaR::google_translate(text_vector[i], target_lang = target_lang)
  }
  return(translated_vector)
}
