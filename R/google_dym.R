google_dym <- function(original_text = "I would lik to se the plants in your grden", target_language = "en", source_language = "auto") {


in_l <- LinguaR::google_translate(original_text,target_language = "eo",source_language = source_language)
out_l <- LinguaR::google_translate(in_l,target_language = target_language,source_language = "eo")

return(out_l[1])

}
