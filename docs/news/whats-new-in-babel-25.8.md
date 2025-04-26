# What's new in babel 25.8

**Draft**

<span style="color:red;">⚠</span> **This release introduces a
potentially breaking change.** Please, read the section «Metadata»
below.

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

`Babel` now sets the main language based on the document metadata. 
Basically, what it does is to convert something like:
```
\DocumentMetadata{lang=da}
...
\usepackage[english]{babel}
```
to
```
\DocumentMetadata{lang=da}
...
\usepackage[main=danish, english, danish]{babel}
```

The basic tag lookup explained in the `babel` manual is applied here,
so that `fr-Latn-FR` is valid and mapped to `fr`, which is in turn
mapped to `french`, while `en-Latn-US` is mapped to `en-US`, which is
mapped to `american`. Note the information in the `ini` file is kept.
So, `lang=es-CO` is (currently) mapped to `spanish` and the field
`tag.bcp47` is still `es`, because it’s the **resolved** locale.
However, `\GetDocumentProperties{document/lang}` returns `es-CO`,
because it stores, as far as `babel` is concerned, the **requested**
locale.

**This is a breaking change**. But `\DocumentMetadata` is a recent
LaTeX feature, and problems should be minimal. Moreover, this short
example didn’t make much sense, because settings are contradictory.
Note also with the `lang` metadata, and if there are no other language
declarations as class or package options, the language loaded is
that set as metadata instead of the dummy language `nil`.

As part of this change, there is some cleanup and refactoring related
to locales tags, which is a work in progress.
