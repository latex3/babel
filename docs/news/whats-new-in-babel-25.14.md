# What's new in babel 25.14

**Development. Very tentative draft.**

**Potentially breaking change.** Extensive tests are being
  carried out.
  
Significant hanges are currently unlikely, but it’s still work in
progress.

Due to be released (hopefully) in October, 20.

The following notes refer to the traditional `ldf` mechanism (which is
not necessarily ‘old’).

Deprecated names (`bahasai`, `samin`, `usorbian` and a few more) will
show a warning.

## Special cases and known issues with `ldf` styles

See also [What's new in babel 25.11](https://latex3.github.io/babel/news/whats-new-in-babel-25.11.html).

### `greek`, `monotonicgreek`, `polytonicgreek`, `ancientgreek`

They are recognized, in addition to attributes and modifiers. However,
using them at the same time is not supported. The `\localename` is
always `greek`, but they can be selected with the corresponding names.
Actually, internally both `greek` and the name of the selected variant
are mixed, so as a hack the new loader defines two languages [under
study]. With `pdftex` and `xetex` this is very likely irrelevant, but
with `luatex` can be relevant (eg, transforms).

The correct BCP 47 tags are set only with `greek`, `monotonicgreek`,
`polytonicgreek`, and `ancientgreek`, and not with `greek` + a modifier
or attribute.

The name `polutonikogreek` is discouraged (deprecated?).

### `austrian`, `german`, `swissgerman`

They refer to the old 1901 variant, not the modern one. For the modern
1996 variant, use `naustrian` and `ngerman`. For the moment, this
legacy behavior is kept, and a warning highlighting it will be shown
with `german` and `austrian`.

**Breaking change** `swissgerman` is now assigned to the language
with tag `gsw`. For modern Swiss High German (tag `de-CH`) you can use
`swisshighgerman` (the Unicode CLDR name) and `nswissgerman` (the
legacy name). The `\localename` is in both cases `nswissgerman`.

### `serbian`, `serbianc`

For the moment, the legacy behavior is kept, so that `serbianc` is for
the Cyrillic script and `serbian` is for the Latin script. The latter
will show a warning highlighting this doesn’t conform the standard
naming.

###  `ethiop`, `amharic`

`ethiop` is still recognized, but you can also load and select it with
`amharic`, which is the recommended name.

### turkish

### hindi

### kurmanji, kurdish

Pending of sorting out.

### farsi

pdftex: Error with `\MakeUppercase` 

## Fixes and other changes

### Determining the main language

There was long-standing bug which has remained unnoticed for
decades. The documented behavior is the last declared language is
set as the main one. That’s true with:
```
\usepackage[langA,langB,langA]{babel}
```
But it’s not true with the following, which oddly set `langB` as the
main language:
```
\documentclass[langA,langB,langA]{article}
```
It was partly caught by `babel`, but for another situation (as a
warning in the log revealed), namely, a language declared as both class
and package option, whose behavior was not well-defined (but preserved
for compatibility). The main purpose of the `main` key was to overcome
this problem.

Note languages as class options options doesn’t mean ‘set it as main
language’, but rather ‘pass it as option to all packages’. Admittedly,
this can be counter-intuitive, and after all in monolingual documents
it’s the main language, too.

After more than 10 years showing a warning, it’s time to normalize the
behavior, and now the very last language (considering all of them in
class and package options, in this order) is the main language. What
`main` does is just to move it at the end.

### Other fixes

Other fixes: 352, 354, 356.

The option `main` was ignored after the first `\babelprovide` for a
certain language. This could also solve #351.

### Config files

They are deprecated. They can break document portability and there
are better ways to customize the behavior of languages (for example,
hooks and packages).









