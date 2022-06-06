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
for about 500 locales already available.

A few locales with a region or a script have in the CLDR a more precise
name. For example, `ro-MD` is “Moldavian”. They will be normalized in
`babel` in the next few releases.