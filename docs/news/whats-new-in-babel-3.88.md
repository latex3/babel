# What's new in babel 3.88

(dev) Draft

## New locale files

There are 37 new locale files, based on the [forthcoming] CLDR 43. They are, grouped by script:
* **Arabic.** Baluchi.
* **Cyrillic.** Abkhazian, Erzya.
* **Devanagari**. Haryanvi, Bhojpuri, Rajasthani.
* **Ethiopic**. Blin, Geez, Tigre, Wolaytta.
* **Latin.** Afar, Atsam, Corsican, Ga, Guarani, Jju, Ligurian, Muscogee, Northern Sotho, Nyanja, Papiamento, Prussian, Saho, Sicilian, Silesian, South Ndebele, Southern Sotho, Swati, Taroko, Tok Pisin, Tsonga, Tswana, Tyap, Venda, Volapük.
* **N’ko.** N’Ko.
* **Unified Canadian Aboriginal Syllabics.** Inuktitut.

## Casing

This features relies in a future change in the LaTeX kernel, so it’s
not currently available. It’s related to the new casing mechanism.

There is a new option in `\babelprovide` to set the default casing
rules in a few languages. They are (from `interface3.pdf`):
* Armenian: `yiwn`, which maps U+0587 to capital ech and yiwn on
  uppercasing.
* German: `eszett`, which maps the lowercase *Eszett* to a *großes
  Eszett* (in other words, ‘SS’ is a single character).
* Greek: `iota`, which converts the *ypogegrammeni* (subscript muted
  iota) to capital iota when uppercasing.

For example:
```tex
\usepackage[greek]{babel}
\babelprovide[casing=iota]{greek}
```

## New hook

With a new hook we can inject some code before the declarations by a
language within `\AtBeginDocument`. The optional argument with the
language in this particular case is not the ‘current’ one, because at
this point is always the main language, but the language that wrote the
code. There is also a special value in this argument, because `/` means
‘return to the core `babel` definitions’ (in other words, what follows
hasn’t be written by any language.
