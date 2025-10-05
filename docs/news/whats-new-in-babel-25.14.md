# What's new in babel 25.14

** Development. Very tentative draft.**

**Potentially breaking change.** Extensive tests are being
  carried out.
  
Everything is liable to change! 

Due to be released in October, 20.

The following notes refer to the traditional `ldf` mechanism (which is
not necessarily ‘old’).

Deprecated names (`bahasai` and a few more), will show a deprecation
warning. The extra info in `ini` files is not loaded [very likely].

## Special cases and known issues with `ldf` styles

See also...

### greek, monotonicgreek, polytonicgreek, ancientgreek

They are recognized, in addition to attributes and modifiers. However,
using them at the same time is not supported. The `\localename` is
always `greek`, but they can be selected with the corresponding names.
Actually, internally both `greek` and the name of the selected variant
are mixed, so as a hack the new loader defines two languages [under
study]. With `pdftex` and `xetex` this is very likely irrelevant, but
with `luatex` can be relevant (eg, transforms).

The correct BCP 47 tag are set only with `greek`, monotonicgreek???,
`polytonicgreek`, and `ancientgreek`

The name `polutonikogreek` is discouraged (deprecated?).

### austrian, german, swissgerman

They refer to the old 1901 variant, not the modern one. For the modern
1996 variant, use `naustrian` and `ngerman`. For the moment, this
legacy behavior is kept, and a warning highlighting it will be shown
with `german` and `austrian`.

`swissgerman` (**breaking change**) is now assigned to the language
with tag `gsw`. For modern Swiss High German (tag `de-CH`) you can use
`swisshighgerman` (the Unicode CLDR name) and `nswissgerman` (the
legacy name). The `\localename` is in both cases `nswissgerman`.

### serbian, serbianc

For the moment, the legacy behavior is kept, so that `serbianc` is for
the Cyrillic script and `serbian` is for the Latin script. The latter
will show a warning highlighting this doesn’t conform the standard
naming.

###  ethiop, amharic

It's still recognized, but you can also load and select it with
`amharic`, which is the recommended name.

### turkish

### hindi

### kurmanji, kurdish

Pending of sorting out.

### farsi

pdf: Error con `\MakeUppercase` 

### piedmontese

Error con `"a`









