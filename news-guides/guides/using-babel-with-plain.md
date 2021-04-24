# Using babel with Plain

(*Under development*)

As explained in the manual, not all languages provide a `sty` file and
some of them are not compatible with Plain. This document will explain
how to use `babel` with Plain, because the information in the manual
(for LaTeX) is almost non-existent (just a few lines).

Currently, support for Plain is mostly in a maintenance mode, which
means **many of the features added in the last few months (well, years)
won't work**.

It is worth noting Babel is *not* compatible with the original Plain
but rather with a format named `bplain` (admittedly, the manual is
somewhat misleading in this regard). Apparently this format has never
found its way into most of distributions. Version 3.9 added support for
e-Plain, because the changes to achieve it were minimal. **When the
manual refers to Plain, it actually means e-Plain and pdf-Plain**, which
are the formats used *de facto* in most cases. 

## User’s level

Here is a minimal working example with two languages:
```tex
\input dutch.sty
\input danish.sty  % Last language, and therefore the main one
\begindocument

\chaptername---\today

\foreignlanguage{dutch}{\chaptername---\today}

\selectlanguage{dutch}

\chaptername---\today

\bye
```
Which prints (the date will be different, of course):
> Kapitel—14. april 2021<br>
> Kapitel—14. april 2021<br>
> Hoofdstuk—14 april 2021

The optional argument works, so:
```tex
\foreignlanguage[captions]{dutch}{\chaptername---\today}
```
will print ‘Hoofdstuk’.

This is basically all what you can do with Plain TeX, although in some
languages there will be additional features (for example, with
`spanish` `\sen` is correctly recognized) and shorthands are usually
recognized (it depends on how they have been defined). For example:
```tex
\input danish.sty
\begindocument

"< "> f"|i

\bye
```

Everyting related to `\babelprovide` and the `ini` mechanism won't work,
including `\babelfont`. Obviously, features activated as package
options won't work either.

Hooks work when they make sense, which is particularly useful in
Plain’s DIY philosophy. For example:
```tex
\AddBabelHook[danish]{font}{beforeextras}{\it}
```

## Developer’s level

There must be a `sty` proxy file. See the existing ones.

As `ldf` files may contain arbitrary TeX/LaTeX code, there is no
safe rule that can be applied.

Babel defines some LaTeX macros, but many of them are just dummy
definitions just to avoid errors or simplified versions.

(..... More to follow.)

## Languages

Here is a document which runs with no error messages in pdfTeX and
ePlain, but with an error in `latin` in TeX. Note two points: all of
them use the Latin script, and there is only a set of hyphenation
patterns (English):
```
\input afrikaans.sty
\input albanian.sty
\input american.sty
\input austrian.sty
\input bahasa.sty
\input bahasam.sty
\input basque.sty
\input breton.sty
\input british.sty
\input catalan.sty
\input croatian.sty
\input danish.sty
\input dutch.sty
\input esperanto.sty
\input estonian.sty
\input finnish.sty
\input germanb.sty
\input icelandic.sty
\input interlingua.sty
\input irish.sty
\input latin.sty
\input lsorbian.sty
\input naustrian.sty
\input norsk.sty
\input polish.sty
\input portuges.sty
\input romanian.sty
\input samin.sty
\input scottish.sty
\input serbian.sty
\input slovene.sty
\input swedish.sty
\input turkish.sty
\input UKenglish.sty
\input USenglish.sty
\input usorbian.sty
\begindocument

\bye


