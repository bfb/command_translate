# Command Translate

This is a command line translator. It uses Google Translate to translate words directly into the terminal.


## Install via RubyGems

    $ gem install command_translate

## How to use

After installing you have access to translate command. Using the command you are able to translate words and phrases to any language supported by Google Translate.

    $ translate en:es home
    => Translating: home (English to Spanish)
    => casa, hogar, domicilio, residencia, patria, asilo, morada, ciudad natal, madre, meta, habitat, ambiente, hospicio, punto inicial, punto de partida

The first parameter indicates the source language and the desired language. The last parameter is the word that you wanna translate.

    $ translate en:pt-br "what's up?"
    => Translating: what's up? (English to Brazilian Portuguese)
    => que se passa?

You can translate phrases and texts.

Type `translate languages` to view all supported languages and identifiers.

    $ translate languages

## License

This gem is licensed under the MIT License.
The translation service is part of Google.
