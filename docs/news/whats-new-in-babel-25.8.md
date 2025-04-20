# What's new in babel 25.8

**Draft**

## Hebrew justification

*Only lualatex.*

Hebrew justification, unlike many Latin-based scripts that primarily
adjust the spacing between words, frequently utilizes subtle variations in
the spacing between individual letters within words. This can be achieved
by inserting tiny amounts of extra space between letter combinations.

The transform `justification.interletter` activates this kind of
justification, by inserting a `\nobreak` and a zero width glue with a
‘plus’ of .5 times the ‘plus’ inter-word space before a letter when
preceded by another letter or a diacritic (remember in Unicode
combining chars are placed after the corresponding letter). Punctuation
spacing is left unchanged.

This interletter adjustment should be carefully controlled to avoid
disrupting the natural flow and readability of the Hebrew script. It
depends on several factors, like the font or the text width. There
are three tools:
* `\SetTransformValue{interletter.plus}{<value>}`, which sets the factor
  for the glue ‘plus’ value. By default, `.5`.
* `WordSpace` as a `fontspec` option. This is not a `babel` feature,
  but is mentioned because it can be useful.
* The locale option `justification=unhyphenated`, which is a stronger
  version of `\sloppy`.
  
In addition, you can consider using `microtype`, too. 
  
[[Add example]]

## Metadata

**Experimental**. For testing purposes. It has to be currently activated
with option `metadata=on`. Basically, what it does is to convert:
```
\DocumentMetadata{lang=da}
...
\usepackage[metadata=on, english]{babel}
```
to
```
\DocumentMetadata{lang=da}
...
\usepackage[main=danish, metadata=on, english, danish]{babel}
```
The basic tag lookup explained in the `babel` manual is applied here,
so that `fr-Latn-FR` is valid and mapped to `fr`, which is in turn
mapped to `french`, while `en-Latn-US` is mapped to `en-US`, which is
mapped to `american`.

**This is a breaking change**. But `\DocumentMetadata` is a recent
LaTeX feature, and problems should be minimal. Moreover, this short
example didn’t make much sense, because settings are contradictory.
Note also with the `lang` metadata, and if there is no other language
declarations as class or package options, the language loaded is
that set as metadata instead of the dummy language `nil`.


