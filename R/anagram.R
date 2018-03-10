#' @importFrom assertthat assert_that
#' @importFrom stringr str_to_lower str_detect str_split
#' @importFrom dplyr filter pull
#' @importFrom purrr pluck
#' @export
anagram <- function(word){
  word <- str_to_lower(word)
  assert_that(!str_detect(word, "[^a-z]"))

  data <- filter( words_internal, size == nchar(word) ) %>%
    pull(data) %>%
    pluck(1)

  anagram_get( word, data )
}