## Keys in `ini` files

(*Under development.*)

Many keys are related to the CLDR (Common Language Data Repository).
Others are just the TeX primitives with the same name.

Keys may be further qualified in a particular language with a suffix
starting with a uppercase letter. It can be just a letter (eg,
`babel.name.A`, `babel.name.B`) or a name. *Multi-letter* qualifiers
starting with an uppercase letter are forward compatible in the sense
they won’t conflict with new “global” keys (which start always with a
lowercase case). There is an exception, however: the section `counters`
has been devised to have arbitrary keys, so you can add lowercased keys
if you want. Note the fact a qualifier starts with a uppercase letter
doesn’t mean it must be preserved in the user interface (date and
casing variants are examples).

Values may contain `;` and `#`. `ini` files only considers comments
lines starting with `;`, at the beginning. So, `ini` parser must be
configured accordingly.

### `identification`

Most of them are self explanatory.

**charset** The charset in the `ini` file (currently must be `utf8`).

**version** of the `ini` file

**tag.bcp47** May includes if appropriate language, script and region.
  Usually only the language.   

**language.tag.bcp47** The language part.

**script.tag.bcp47** The script part.

**tag.bcp47.likely** The likely full tag. See [Likely Subtags
(CLDR)](https://unicode-org.github.io/cldr-staging/charts/latest/supplemental/likely_subtags.html).
 It can be useful when exporting data to tools expecting a full BCP 47
 tag.

**tag.opentype**  If different from the BCP 47 tag.

**script.name**, like, for example, Cyrillic.

**script.tag.opentype** If different from the BCP 47 tag.

**level** `ini` files are based on a set of keys. The level is much a
  ‘version’ of the list of available keys. Currently is 1, and it will
  stay so until there is some significant change.

**derivate** Not yet used, but its purpose is to identify if the files
  is the original one distributed with `babel` or a derivate (for
  example, a publishing house may want to define its own files).

**encodings** A mostly informative field for 8-bit engines requiring
  font encodings (`T1`, `LGR`, etc.), but used when a language is
  loaded on the fly.

### `captions`

The default section defines the Unicode strings.

The `.licr` subsections are used in 8-bit engines, in pure ASCII using
the LICR.

The final `name` is added by `babel`. 

### `date`

**date.long** fields are as in the CLDR, but the syntax is
different. Anything inside brackets is a date field (eg, `[MMMM]` for
the month name) and anything outside is text. In addition, `[ ]` is a
non breakable space and `[.]` is an abbreviation dot.

Here are some explanations for dates:

http://cldr.unicode.org/translation/date-time-names 

For example, about `narrow`:

> The narrow date fields are the shortest possible names (in terms of
width in common fonts), and are not guaranteed to be unique. Think of
what you might find on a credit-card-sized wallet or checkbook
calendar, such as in English for days of the week:
>
> S M T W T F S

### `typography`

**frenchspacing** (`yes` or `no`) Enable or disable `\frenchspacing`

**hyphenrules** As named in `language.dat`.

**lefthyphenmin** `\lefthyphenmin`

**righthyphenmin** `\righthyphenmin`

**hyphenchar** The hyphenation char (number). Empty for the default. 0
  if there is no hyphen (eg, Thai).

**prehyphenchar** Not yet used (`luatex`).

**posthyphenchar** Not yet used (`luatex`).

**exhyphenchar** Not yet used (`luatex`)

**preexhyphenchar** Not yet used (`luatex`)

**postexhyphenchar** Not yet used (`luatex`)

**hyphenationmin**  Not yet used (`luatex`), but it will be soon.

**hyphenate.other.locale** (Tentative syntax.) A few hyphenation
  patterns require setting some chars to `other`. This one is based on
  the language.

**hyphenate.other.script** (Tentative syntax.) Same, based on the
  script.
  
**linebreaking** The line breaking mode, with a letter: h(yphenated, by
  default), c(jk), s(outheast Asian), u(nhyphenated).
  
### `labels`

Under development:

https://github.com/latex3/babel/blob/master/news-guides/news/whats-new-in-babel-3.48.md

### `characters`

See the CLDR. For example [Exemplar
Characters](http://cldr.unicode.org/translation/-core-data/exemplars),
can help to recognize a language. This list and the punctuation list
are currently not used by `babel`.

### `numbers`

See [Numering systems](http://cldr.unicode.org/translation/-core-data/numbering-systems)

The section about numbers may be used by some package to format
numbers (or even `babel` itself in a future). They reflect local tradicional
usage, not the international one set by either the SI or ISO 80000.

### `counters`

See https://tex.stackexchange.com/questions/529813/how-to-define-counters-with-arbitrary-alphabet/530491#530491

### `transforms`

See
[What's new in babel 3.56](https://github.com/latex3/babel/blob/master/news-guides/news/whats-new-in-babel-3.56.md#transforms-in-ini-files)
