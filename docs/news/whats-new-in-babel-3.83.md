# What's new in babel 3.83

2022-11-31

<span style="color:red;">⚠</span> There are some issues with the
new `\MakeUppercase` and `\MakeLowercase`. For further details, see:

[Localization of \MakeUppercase and \MakeLowercase broken](https://github.com/latex3/babel/issues/189)

## Locales

Support for Punjabi improved, thanks to Arvinder Singh (@punjab).

There are 3 new locale files, for Kaingang, Nheengatu, and Sardinian.

## `lspace`

Compatibility with 'lscape', thanks to Salim Bou (@seloumi). It’s
activated with `layout=graphics`.

## Fixes

* Wrong date format for Australian in `babel-en-AU.ini` (#195)
* Option handling was broken with braces (#198).
* Stray punctuation with tikz lead to lua error (#197).
* Hungarian as a secondary language reordered some captions (#203).





