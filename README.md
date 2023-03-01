# LinguaR Package

The `LinguaR` package is a tool designed to assist with translation, word similarity, and word correction tasks. The package includes several functions to help users achieve these tasks, such as:

## Functions

### `google_translate()`

This function allows users to translate text from one language to another using Google Translate. For example:

```{r}
LinguaR::google_translate("日本語での会話や質問にも対応しています。どうぞよろしくお願いします。")
```

``` r
[1] "We also support conversations and questions in Japanese. Nice to meet you."
```

### `related_words()`

This function returns a set of related words for a given word based on semantic similarity. For example:

```{r}
LinguaR::related_words("sun",n = 5)
```

``` r
[1] "sun"           "star"          "solar eclipse" "sunlight"      "earth"
```

### `google_dym()`

This function corrects spelling errors in text using Google's "Did you mean?" functionality. For example:

```{r}
LinguaR::google_dym(original_text = "I wld like to se the plantns in you garaden")
```

``` r
[1] "I would like to see the plants in your garden"
```

## Installation

You can install `LinguaR` from GitHub using the following code:

```{r}
devtools::install_github("your_username/LinguaR")
```

Note that you may need to install the `httr` package before using `LinguaR`.

## Contributing

If you encounter any issues or have suggestions for new features, please feel free to open an issue on the GitHub repository or submit a pull request.

## License

This package is released under the MIT License.
