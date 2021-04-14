# What's new in babel 3.58

(Under development.)

## Transforms added to `ini` files

**Czech, Polish, Portuguese, Slovak, Spanish** `hyphen.repeat` Explicit hyphens behave like `\babelhyphen{repeat}`.

**Czech, Slovak** `oneletter.nobreak` Converts a space after a non-syllabic preposition into a non-breaking space.

**Hindi** `punctuation.space` With `;:?!`.


**Norsk** `doubleletter.hyphen` Hyphenates the doble-letter groups `bb`, `dd`, `ff`, `gg`, `ll`, `mm`, `nn`, `pp`, `rr`, `ss`, `tt` as `bb-b`, `dd-d`, etc.

**Serbian** `transliteration.gajica` (Note `serbian` with `ini` files refers to the Cyrillic script, which is here the target.) The standard system devised by Ljudevit Gaj. 

## Verbatim and `\babelprehyphenation`

⚠ Now `prehyphenation` transforms are deactivated if the current
hyphenation patterns are `nohyphenation`, so that they aren't applied in verbatim mode.

This behavior can be switched with:
```
\babeladjust{ prehyphenation.disable = nohyphenation }
\babeladjust{ prehyphenation.disable = off }
```

## Fixes

## Other changes


