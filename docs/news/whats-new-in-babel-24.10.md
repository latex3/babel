# What's new in babel 24.10

2024-09-18

<span style="color:red;">⚠</span> For a few years now, a message has
been reporting the syntax `\selectlanguage{\<language>}` (with a macro
instead of a name) was deprecated. Now this syntax has been removed
altogether.

## `\localename`, `\mainlocalename`

Consider the following document:
```tex
\documentclass{article}
\usepackage[english]{babel}
\let\savelanguage\languagename
\begin{document}
\savelanguage$=$\languagename?
\ifx\savelanguage\languagename True\else False!?!?\fi
\end{document}
```
Is ‘english’ not the same as ‘english’? As explained in the manual,
there was a bug in `babel` which messed up catcodes. No alternative was
provided, but now there is one: `\localename`. The name of this macro
follows the new paradigm in `babel`, based on the concept of ‘locale’
(like `\localenumeral`, `\localedate`, `\localeinfo`...).

In addition, there is a new macro named `\mainlocalename`, with the
name of the main language. You can retrieve locale properties for the
main language with, for example:
```tex
\getlocaleproperty\frtag{\mainlocalename}{captions/chapter}
```

They are not available in non-`etex` engines (`pdftex`, `xetex`,
`luatex` and, of course, `etex` are).

## `\babelhyphenmins`

There is a new command to deal with hyphenation in LaTeX (not available
in Plain).

```tex
\babelhyphenmins*[<language-list>]{<left>}{<right>}[<hyphenationmin>]
```

The rationale behind this new command is hyphenmins are
very often a stylistic choice. There are in fact three possible
sets of values, which I’m going to illustrate with Spanish:

* A technical limit imposed by the patterns, especially when 
  generated with `patgen`. This limit in Spanish is 1/1, because it
  includes patterns like `4b.` and `.b2`. Sadly, this limit is often
  unknown or has been lost.
* The ‘traditional’ limit marked by typographical conventions in each
  country (very likely the same language). Note sometimes there is not
  a single convention even in the same country. In Spanish it’s 2/2.
* The layout. If the text box is wide, you can decide to raise the
  value to 3/2 or even 3/3.

Now, consider a document written in English with some words in other
languages with lower values (in Greek it’s 1/1!). This will lead to
undesired typographical inconsistencies. In other words, hyphenmins are
language dependent only to some extent, and having a command to deal
with them in a more general way can be useful.

This explains why the first argument with the language list is optional
– you may want to set the same value for all languages.

The starred version not only adjust the settings in the locales, but
also sets them at once (for a temporary local change). It’s not
compatible with the first optional argument.

It’s worth noting the `luatex` parameter `\hyphenationmin` is language
dependent in the TeX sense (it depends, globally, on the current
`\language`), while `\righthyphenmin` and `\lefthyphenmin` are not
(they depend only on the group). With this command its value can be
unified in the whole document.




