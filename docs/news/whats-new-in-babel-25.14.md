# What's new in babel 25.14

**Potentially breaking changes.** Extensive testing has been carried out, so
  I expect issues will be minimal.

This release introduces a major change in the way locales are declared.
All available languages can be now loaded as class and package options
without the need, in general, for the command `\babelprovide` or the
option `provide`. For example:
```tex
\usepackage[chinese, thai, italian, persian, bidi=default]{babel}
```
`Babel`  will select the preferred method (`ldf` or `ini`) in each case.
Remember the number of locales available for `pdflatex` is more limited
(about 170, against about 300 for `lualatex` and `xelatex`, with varying
degrees of coverage).

Lazy loading is still based always on the `ini` mechanism, because with
`ldf` files it’s not technically feasible.

Some minor points are still to be fine-tuned, including the manual.

## Special cases and known issues with `ldf` styles

The following notes refer to the traditional `ldf` mechanism (which is
not necessarily ‘old’ or ‘discouraged’).

Deprecated names (`bahasai`, `samin`, `usorbian` and a few more) will show a warning. See [Locale naming](https://latex3.github.io/babel/guides/locale-naming.html) for further info.

See also [What's new in babel 25.11](https://latex3.github.io/babel/news/whats-new-in-babel-25.11.html).

### `greek`, `monotonicgreek`, `polytonicgreek`, `ancientgreek`

They are recognized, in addition to attributes and modifiers. However,
using them at the same time is not supported. The `\localename` is
always `greek`, but they can be selected with the corresponding names.
Actually, internally both `greek` and the name of the selected variant
are mixed, so as a hack the new loader defines two languages with the
same definitions but with different names. With `pdflatex` and `xelatex`
this is very likely not relevant, but with `lualatex` can be (e.g.,
transforms).

The correct BCP 47 tags are set only with `greek`, `monotonicgreek`,
`polytonicgreek`, and `ancientgreek`, and not with `greek` + a modifier
or attribute. Note Modern Greek (tags `el`, `el-monoton`, `el-polyton`)
is considered a different language than Ancient Greek (tag `grc`).

The name `polutonikogreek` is deprecated.

See also the page on [Greek](https://latex3.github.io/babel/guides/locale-greek.html).

### `austrian`, `german`, `swissgerman`

They refer to the old 1901 variant, not the modern one. For the modern
1996 variant, use `naustrian` and `ngerman`. For the moment, this
legacy behavior is kept, and a warning highlighting it will be shown
with `german` and `austrian`.

**Breaking change.** `swissgerman` is now assigned to the language
with tag `gsw`. For modern Swiss High German (tag `de-CH`) you can use
`swisshighgerman` (the Unicode CLDR name) and `nswissgerman` (the
legacy name). The `\localename` is in both cases `nswissgerman`.

See also the page on [German](https://latex3.github.io/babel/guides/locale-german.html).

### `serbian`, `serbianc`

For the moment, the legacy behavior is kept, so that `serbianc` is for
the Cyrillic script and `serbian` is for the Latin script. The latter
will show a warning highlighting this doesn’t conform the standard
naming.

###  `ethiop`, `amharic`

`ethiop` is still recognized, but you can also load and select it with
`amharic`, which is the recommended name. The `ldf` mechanims is used
in `pdflatex`. With Unicode engines, the `ini` mechanims is used.

### arabic, farsi, hebrew, hindi, mongolian, thai

The `ldf` mechanims is used in `pdflatex`. With Unicode engines, the
`ini` mechanims is used.

## Fixes and other changes

### Determining the main language

**Breaking change.** There was long-standing bug which has remained
unnoticed for decades. The documented behavior is the last declared
language is set as the main one. That’s true with:
```tex
\usepackage[langA,langB,langA]{babel}
```
But it’s not true with the following, which oddly set `langB` as the
main language:
```tex
\documentclass[langA,langB,langA]{article}
```
It was partly caught by `babel`, but for another situation (as a
warning in the log revealed), namely, a language declared as both class
and package option, whose behavior was not well-defined (but preserved
for compatibility). The main purpose of the `main` key was to overcome
this inconsistency.

Note languages as class options options don’t mean ‘set it as main
language’, but rather ‘pass it as option to all packages’. Admittedly,
this can be counter-intuitive, and after all in monolingual documents
it’s the main language, too.

After more than 10 years showing a warning, it’s time to normalize the
behavior, and now **the very last language (considering all class and
package options, in this order) is the main language**. (What
`main` does is to move it at the end.)

### Other fixes

Other fixes:
* 352: Troubleshooting spanish babel with DocumentMetadata language
  option.
* 354: Option 'polytonicgreek' fails.
* 356: `\usepackage[austrian]{babel}` results in ‘undefined control
  sequence `\l@austrian`’.

The option `main` was ignored after the first `\babelprovide` for a
certain language. This could also solve #351.

### Config files

They are **deprecated**. They can break document portability and
**there are more modern alternatives** to customize the behavior of
languages (for example, hooks and packages).

## Support for bidi texts with XeTeX

As of this writing, the `bidi` package, which `babel` currently relies
on for `xetex`, is unmaintained. It’s strongly recommend **switching to
a modern workflow based on `lualatex`**, because `babel` has its own
**built-in, future-proof mechanism** to deal with bidirectional text,
providing a **more stable and integrated solution**.