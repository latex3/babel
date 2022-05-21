# Locale naming

*Draft*

For the naming of the locales at the user level, the following
conventions will be used. 

Languages, and therefore the corresponding files, are named with the
English name, lowercased and without spaces: `northernkurdish`. Hyphens
separate other fields, like script and region: `serbian-latin`,
`spanish-mexico`. They are taken from the CLDR.

Wherever the CLDR doesn’t provide a name (eg, “Medieval Latin”), the
pattern followed in practice for other names is applied, namely, use
the ‘natural’ form in English: `medievallatin`. They should be
preferably based on the description field in the
[IANA](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry)
registry (eg, `polytonicgreek`), although some simplifications can be
necessary, because some names are “too” descriptive.

A few locales with a region or a script have in the CLDR a more precise
name. For example, `ro-MD` is “Moldavian”. They will be normalized in
`babel` in the next few releases.


