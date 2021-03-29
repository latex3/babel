# What's new in babel 3.57

(*Under development.*)

## Transforms added to `ini` files

*Some of them are still experimental or incomplete.*


* **Arabic** `transliteration.dad` ▸ Applies the transliteration system
devised by Yannis Haralambous for \textsf{dad}. Not yet complete, but
sufficient for many texts.

* **Croatian** `digraphs.ligatures` ▸ Ligatures *DŽ*, *Dž*,
*dž*, *LJ*, *Lj*, *lj*, *NJ*,
*Nj*, *nj*. It assumes they exist. This is not the
recommended way to make these transformations (the best way is with
OTF features), but it can get you out of a hurry.

* **Greek** `diaeresis.hyphen` ▸ Removes the diaeresis above iota and
upsilon if hyphenated just before. It works with the
three variants.

* **Hindi** `transliteration.hk` ▸ The Harvard-Kyoto system to romanize
Devanagari.

* **Hungarian** `digraphs.hyphen` ▸ Hyphenates the groups
*ccs*, *ddz*, *ggy*, *lly*, *nny*,
*ssz*, *tty* and *zzs* as *cs-cs*,
*dz-dz*, etc.


