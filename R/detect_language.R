detect_language <- function(text = "hola como estas") {
  result <- cld2::detect_language(text)
  if (is.null(result) == F) {
    return(result[1])
  } else {
    return("Unknown")
  }
}

