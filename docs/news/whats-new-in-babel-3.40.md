# What's new in babel 3.40

2020-02-14

## Locale ini files for Latin and Greek

They are based on the corresponding `ldf` files, and work with XeLaTeX and LuaLaTeX.

The Greek styles define a macro, `\greeknumeral{number}`, which converts the number to Ionian (alphabetic) form, as represented by the original babel `greek` style, and with the same upper limit (999999). However, the code has been rewritten from scratch. As defined, it is fully expandable and there are three macros to customize it, which are redefined with `\renewcommand`:
* `\BabelGreekNumeralMarkerEnd`: 1 argument with the generated number >999; by default it is #1ʹ.
* `\BabelGreekNumeralMarker`: 1 argument with the whole number; by default is #1, ie, do nothing, but you may add an overline.
* `\BabelGreekNumeralMiriads`: 4 arguments, with the digits above 9999, ie, 1234 if the number is 12345678 (padded with zeroes if necessary); note by default `\greeknumeral` does not accept such large numbers, but you may redefine it to use, for example, the M representation.

## ‘Other’ characters in hyphenation patterns

A new field has been added to some `ini` files, with a list of characters whose `\lccode` has been changed in the hyphenation patters. A typical case is the apostrophe in languages like Italian and French. These changes were not taken into account when the language was loaded with `\babelprovide`, which should be considered a bug.

## Fixes

* Old Plain TeX and Plain XeTeX raised an error.
* Option T1 in `fontenc` was not recognized when setting `\latinencoding` with LaTeX 2020-02-02.
* Locale names were hardcoded in some `babel-...tex` files.

  