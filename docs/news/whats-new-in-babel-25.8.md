# What's new in babel 25.8

2025-04-29

<span style="color:red;">⚠</span> **This release introduces a
potentially breaking change.** Please, read the section
[Metadata](https://latex3.github.io/babel/news/whats-new-in-babel-25.8.html#metadata)
below.

## Hebrew justification

*Only lualatex.*

Hebrew justification, unlike many Latin-based scripts that primarily
adjust the spacing between words, frequently utilizes subtle variations in
the spacing between individual letters within words. This can be achieved
by inserting tiny amounts of extra space between letter combinations.

The transform `justification.interletter` in all locales in the Hebrew
script (Hebrew, Ancient Hebrew, Ladino, Yiddish) activates this kind of
justification, by inserting a `\nobreak` and a zero width glue with a
‘plus’ of .5 times the ‘plus’ inter-word space before a letter when
preceded by another letter or a diacritic (remember in Unicode
combining chars are placed after the corresponding letter). Punctuation
spacing is left unchanged.

This interletter adjustment should be carefully controlled to avoid
disrupting the natural flow and readability of the Hebrew script. It
depends on several factors, like the font or the text width. There
are three tools:
* `\SetTransformValue{hebrew}{interletter.plus}{<value>}`, which sets the factor
  for the glue ‘plus’ value. By default, `.5`. (Use the corresponding
  language name.)
* `WordSpace` as a `fontspec` option. This is not a `babel` feature,
  but is mentioned because it can be useful.
* The locale option `justification=unhyphenated`, which is a stronger
  version of `\sloppy`.
  
In addition, you can consider using `microtype`, too. 

Here is an example:
```tex
\documentclass{article}

\usepackage[hebrew,
  provide={ transforms=justification.interletter }, 
  bidi=basic]{babel}
\babelfont{rm}[WordSpace={1,2,1}]{FreeSerif}

\SetTransformValue{hebrew}{interletter.plus}{.7}

\setlength{\textwidth}{4.5cm}
\setlength{\parindent}{0pt}

\begin{document}

בְּרֵאשִׁית בָּרָא אֱלֹהִים אֵת הַשָּׁמַיִם וְאֵת הָאָרֶץ׃ וְהָאָרֶץ
הָיְתָה תֹהוּ וָבֹהוּ וְחֹשֶׁךְ עַל־פְּנֵי תְהוֹם וְרוּחַ אֱלֹהִים
מְרַחֶפֶת עַל־פְּנֵי הַמָּיִם׃ וַיֹּאמֶר אֱלֹהִים יְהִי אוֹר וַיְהִי
אוֹר׃ וַיַּרְא אֱלֹהִים אֶת־הָאוֹר כִּי־טוֹב וַיַּבְדֵּל אֱלֹהִים בֵּין
הָאוֹר וּבֵין הַחֹשֶׁךְ׃ וַיִּקְרָא אֱלֹהִים לָאוֹר יוֹם וְלַחֹשֶׁךְ
קָרָא לָיְלָה וַיְהִי־עֶרֶב וַיְהִי־בֹקֶר יוֹם אֶחָד׃

\end{document}
```
![](../media/hebrew-interletter.png)

## Metadata

`Babel` now sets the main language based on the document metadata. 
Basically, what it does is to convert something like:
```tex
\DocumentMetadata{lang=da}
...
\usepackage[english]{babel}
```
to
```tex
\DocumentMetadata{lang=da}
...
\usepackage[main=danish, english, danish]{babel}
```

The basic tag lookup explained in the `babel` manual is applied here,
so that `fr-Latn-FR` is valid and mapped to `fr`, which is in turn
mapped to `french`, while `en-Latn-US` is mapped to `en-US`, which is
mapped to `american`. This eases the localization of automatically
generated documents.

Note the information in the `ini` file is kept. So, `lang=es-CO` is
(currently) mapped to `spanish` and the field `tag.bcp47` is still
`es`, because it’s the **resolved** locale. However,
`\GetDocumentProperties{document/lang}` returns `es-CO`, because it
stores, as far as `babel` is concerned, the **requested** locale.

Tags are not validated, which means mistakes like |en-UK| or wrong tags
like |de-AUS| or |la-x-classical| might be accepted without
complaining.

**This is a breaking change**. But `\DocumentMetadata` is a recent
LaTeX feature, and problems should be minimal. Moreover, the short
example above didn’t make much sense, because settings are contradictory.
Note also with the `lang` metadata, and if there are no other language
declarations as class or package options, the language loaded is
that set as metadata instead of the dummy language `nil`.

Note also setting the `lang` metadata and a language as a class option
at the same time is not well defined, even without `babel` (which
explains why `main` is set explicitly in the example, even if usually
discouraged).

As part of this change, there is some cleanup and refactoring related
to locales tags, which is a work in progress. Also, the info in `ini`
files is now read when the `ldf` starts (instead of at the end of the
`babel` package). `\BabelEnsureInfo` is now no-op, because it’s loaded
always.
