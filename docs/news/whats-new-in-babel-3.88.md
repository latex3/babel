# What's new in babel 3.88

2023-04-18

## New locale files

There are 37 new locale files, based on the just released CLDR 43. They are, grouped by script:
* **Arabic.** Baluchi.
* **Cyrillic.** Abkhazian, Erzya.
* **Devanagari**. Haryanvi, Bhojpuri, Rajasthani.
* **Ethiopic**. Blin, Geez, Tigre, Wolaytta.
* **Latin.** Afar, Atsam, Corsican, Ga, Guarani, Jju, Ligurian, Muscogee, Northern Sotho, Nyanja, Papiamento, Prussian, Saho, Sicilian, Silesian, South Ndebele, Southern Sotho, Swati, Taroko, Tok Pisin, Tsonga, Tswana, Tyap, Venda, Volapük.
* **N’ko.** N’Ko.
* **Unified Canadian Aboriginal Syllabics.** Inuktitut.

In addition, some month names in Greek has been fixed (thanks to Günter
Milde).

## New hook

With a new hook, code can be injected before the declarations by a
language within `\AtBeginDocument`. The optional argument with the
language in this particular case is not the ‘current’ one, because at
this point is always the main language, but the language that wrote the
code. There is also a special value in this argument, because `/` means
‘return to the core `babel` definitions’ (in other words, what follows
hasn’t been written by any language).

## Preview: casing

This features relies in a future change in the LaTeX kernel, so it’s
not currently available and, of course, experimental. It’s related to
the new casing mechanism.

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
