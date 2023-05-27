# Locale naming

*Draft*

For the naming of the locales at the user level, the following
conventions are used. 

Languages, and therefore the corresponding files, are named with the
English name, lowercased and without spaces: `northernkurdish`.
Diacritics and non-letters are just removed (`lu` for “Lü”, `kinaraya`
for “Kinaray-a”, `bosniaherzegovina` for “Bosnia & Herzegovina”). Other
fields, like script and region, are separated with hyphens:
`serbian-latin`, `spanish-mexico`. Some regions may have long names
(eg, `bosniaherzegovina`), so, for convenience, the corresponding code
is also allowed (`ba`, in this case).

They are taken from the CLDR. Wherever the CLDR doesn’t provide a name
(eg, “Medieval Latin”), the pattern followed in practice for other
names is applied, namely, use the ‘natural’ form in English:
`medievallatin`. They should be preferably based on the description
field in the
[IANA](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry)
registry (eg, `polytonicgreek`), although some simplifications can be
necessary, because some names are “too” descriptive. See also the
[templates](https://github.com/latex3/babel/tree/main/locale-templates)
for about 500 locales already available. As a secondary source,
[Glottolog](https://glottolog.org/) is used, too. (Wikipedia articles
can be taken as a complementary but unreliable source, and its
information must be verified; on the other hand, internal data, like
[this one](https://en.wikipedia.org/wiki/Module:Lang/data), is
useful for both names and tags.)

A few locales with a region or a script have in the CLDR a more precise
name. For example, `ro-MD` is “Moldavian”. They will be normalized in
`babel` in the next few releases.

When there are ‘short’ additional names (without hyphens), prefer
‘plain’ demonyms (even if vernacular) over composed names (eg,
`british` better than `UKenglish`). This reflects the evolution of the
`english` style, because the names `american` and `british` predate
`USenglish` and `UKenglish`. Further, the main names in the CLDR for
`en-US` and `en-GB` are `American English` and `British English`. Note
the names `ukenglish` and `usenglish` (all lowercase) are *not*
supported by `babel` as `ldf` files, even if they work in some
operating systems.

The following names are deprecated (use the name after the arrow):
* `brazil` → `brazilian`
* `bahasai` → `indonesian`
* `bahasam`, `meyalu` [*sic*] → `malay`
* `classiclatin` → `classicallatin`
* `ecclesiasticlatin` → `ecclesiasticallatin`
* `frenchb`, `francais`, `canadien` → `french`
* `germanb` → `german`, `ngerman` (see below)
* `lsorbian` → `lowersorbian`
* `portuges` [*sic*] → `portuguese`
* `samin` → `northernsami` 
* `ukraineb` → `ukrainian`
* `usorbian` → `uppersorbian`
* `vietnam` → `vietnamese`
* `russianb` → `russian`

Therefore, they are not included in `name.babel`. Some anomalous names
(related to `german` and `serbian`) should be fixed in the future, but
how to deal with them is under study.


