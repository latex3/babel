# What's new in babel 3.96

2023-10-25

Version number is reaching 3.100, and a new numbering schema will be
introduced in 2024, with the year (abbreviated) and a correlative
number. 

## Improved `onchar`

Besides optimizing it for speed, a somewhat surprising behavior has
been fixed. Let’s suppose you have decided to write some untagged Serbian
text in an English document, so you write:
```tex
\babelprovide[onchar = ids fonts]{serbian}
```
But this handles every Cyrillic letter, including those in something like:
```
\foreignlanguage{bulgarian}{български}
```

To avoid it, `onchar` is now applied only if the original and the
target scripts are different.

## Improved locales

* **Odia (Oriya).** Captions has been defined, a few months have been fixed and there are a
couple of alphabetic counters, namely, `alphabetic` and `akshar`.
Thanks to ଅଶୋକ ଦାସ୍ and [ଅଭିଷେକ ଜେନା](https://github.com/avisekjena).

* **Croatian.** Transform `hyphen.repeat`.

A few encodings have been sorted out, to remove `OT1`.

## ASCII encoding

As suggested by [Udi Fogiel](https://github.com/Udi-Fogiel), with the
macro `\asciiencoding` you can retrieve and modify the value determined
by `babel` for `\ensureascii`.

## Fixes

* Fixed the name for the counter `date.day` (from `date.days`) in `zh`
locales.
* Added the `LGI` encoding to the non-ASCII list.