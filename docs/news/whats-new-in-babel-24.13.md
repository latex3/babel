# What's new in babel 24.13

2024-11-08

There are important news related to the LaTeX kernel, which affects
how to deal with languages. Now, according to [Engine news from the
LaTeX Project](https://www.texdev.net/2024/11/05/engine-news-from-the-latex-project),
“LuaTeX is the recommended engine for all new documents”. Furthermore,
“it is time to move away from XeTeX: certainly for new documents, and
even for existing ones”.

[Here](https://latex3.github.io/babel/guides/migrating-xetex-luatex.html) is a document (still a draft) with
some hints on how to migrate from `xetex` to `luatex`.

Work is underway to provide short examples in many languages.
See [Index of locale guides](https://latex3.github.io/babel/guides/index-locale.html)

## French: Transform variables

When the `ini` file is used, you can now configure the spacing with
punctuation, with the new transform variables. See [What’s new in
24.11](https://latex3.github.io/babel/news/whats-new-in-babel-24.11.html).

Variables are:
* `guillemet.natural`, `guillemet.plus`, `guillemet.minus`
* `colon.natural`, `colon.plus`, `colon.minus`
* `high.natural`, `high.plus`, `high.minus` 

With, for example:
```tex
\SetTransformValue{french}{colon.natural}{.8}
```
spacing with the colon is slightly smaller (default is `1`). Unit
is the current ordinary space.

## Pashto: Persian and Islamic calendars

Added strings for the those calendars in the locale for Pashto. Since
the default calendar was Persian, an error was even raised (which is
now fixed).

Emtpy strings has been added to Mazanderani and Northern Luri, which
also require the Persian calendar. Sadly, the Unicode CLDR doesn’t
define them yet. Feel free to contribute them.

## Fixes

* Uyghur hyphenation mechanism stopped working.
* The Hebrew calendar converter raised an error.






