# What's new in babel 25.2

2025-01-25

I’m preparing a collection of short videos here: [LaTeX – Localization
and
multilingual](https://www.youtube.com/playlist?list=PLVc2cHCI6zpJcaa1x-yK9iRjqtE3Ct2Ja).
At the moment there are five, on Arabic, Hebrew, Hindi, pure Unicode
strings and Indic languages with lazy loading.

## RTL scripts

The list of RTL scripts has been updated:

* AL (Arabic-like scripts): Arabic, Syriac, Thaana, Hanifi Rohingya,
  Hanifi, Sogdian.

* R (RTL scripts): Adlam, Avestan, Chorasmian, Cypriot, Elymaic, Garay, 
  Hatran, Hebew, Imperial Aramaic, Inscriptional Pahlavi, Inscriptional
  Parthian, Kharoshthi, Lydian, Mandaic, Manichaean, Mende Kikakui,
  Meroitic Cursive, Meroitic Hieroglyphs, Nabataean, Nko, Old
  Hungarian, Old North Arabian, Old Sogdian, Old South Arabian, Old
  Turkic, Old Uyghur, Palmyrene, Phoenician, Psalter Pahlavi,
  Samaritan, Yezidi, Mandaean, Meroitic, N'Ko, Orkhon, Todhri.

Note some scripts has duplicated names, because sources don’t agree.
This won’t hurt.

## Locales

There are a couple of new bare minimum locales:

* `algerianarabic`, with tag `arq`, also known as Darija or Lahja
   Djazairia, and different from Standard Arabic as spoken in Alger,
   with tag `ar-DZ`.
* `olduighur`(note the name is with ‘i’, because it’s the form in BCP
  47).
  
Fixed a caption in Welsh.

## Fixes

`\BCPdata{tag}` raised an error. Note the user command in `babel` to
retrieve the locale info is `\localeinfo`.

  





