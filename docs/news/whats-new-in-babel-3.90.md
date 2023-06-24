# What's new in babel 3.90

**Draft**

## Improvements in Arbic justification

Kashida are built by adding the Unicode ARABIC TATWEEL character. Now a
limit can be set with ... Its design can vary greatly with the font,
and so does the exact value of this parameter (which is currently
global).

## Locale names

* The names `classiclatin` and `ecclesiasticlatin` are now discouraged
  because `classicallatin` and `ecclesiasticallatin` are more correct.
* Since `farsi` is a well established name for `persian`, it's now a
  valid synonymous, although the preferred name is still the latter (as
  per the CLDR).
* `vietnam` was deprecated and now finally has been removed.

## Fixes

* `\normalsfcodes` had a wrong value in heads and foots, which meant the
  text was sometimes badly spaced after dots, colons and the like
  (#240).





