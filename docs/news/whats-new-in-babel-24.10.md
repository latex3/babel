# What's new in babel 24.10

**Draft**

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
provided, but now there is one: `\localename`. This name follows
the new paradigm in `babel`, based on the concept of ‘locale’.

In addition, there is a new macro named `\mainlocalename`, with the
name of the main language.

## `\babelhyphenmins`

(Under development.)

```tex
\babelhyphenmins*[<language-list>]{<left>}{<right>}[<hyphenationmin>]
```

The rationale behind this new command is the following: hyphenmins are
very often a stylistic choice. There are in fact three possible
sets of values, which I’m going to illustrate with Spanish:

* A technical limit imposed by the patterns, especially when they have
  been generated with `patgen`. This limit in Spanish is 1/1, because it
  includes patterns like `4b. .b2`. Sadly, this limit is often unknown
  or has been lost.
* The ‘traditional’ limit marked by typographical conventions in each
  country (very likely the same language). Note sometimes there is not
  a single convention even in the same country. In Spanish it’s 2/2.
* The layout. If the text is wide, you can decide to raise the value
  to 2/3 or even 3/3.

Now, consider a document written in English with some words in other
languages with lower values (in Greek it’s 1/1!). This will lead to
undesired typographical inconsistencies.

This explains why the language is optional. 

The starred version not only adjust the settings in the locales, but
also sets them at once.

In other words, hyphenmins are language dependent only to some extent,
and having a command to deal with them in a more general way can be
useful.

It’s worth noting `\hyphenationmin` is language dependent in the TeX
sense (it depends, globally, on the current `\language`), while
`\righthyphenmin` and `\lefthyphenmin` are not (they depend only on the
group). With this command its value can be unified in the whole
document.




