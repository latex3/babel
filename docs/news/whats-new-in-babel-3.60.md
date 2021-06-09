# What's new in babel 3.60

2021-06-02

## Global options were messed up

This is a fix for a critical bug (#134).

For the languages to be recognized in class options, `babel` used a trick
which was, admittedly a bit faulty. It used to work, but with the
latest changes in the LaTeX kernel class options were messed up, and
many documents were spoilt.

## Improvements in Arabic justification

Lists are now correctly formatted when Arabic justification is enabled.

The predefined transform `kashida.plain` is also available in `ar-DZ`,
`ar-MA`, `ar-SY`. Vowels are taken into account.

## Other changes

* Fix #133. Underfull \hbox with amsmath
* Locale `ini` for Basque has templates for the chapter, appendix,
  figure and table captions, to place the number before.

