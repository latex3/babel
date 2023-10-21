# What's new in babel 3.96

** Draft **

Version number is reaching 3.100, so a new numbering schema will be
introduced in 2024, with the year and a correlative number.

## Improved `onchar`

Besides optimizing it for speed, a somewhat surprising behavior has
been fixed. Let’s suppose you have decided to write some untagged Serbian
text in an English document, so you write:
```tex
\babelprovide[onchar = ids fonts]{serbian}
```
This handles every Cyrillic letter, including those in something like:
```
\foreignlanguage{bulgarian}{български}
```

To avoid it, `onchar` is now applied only if the original and the target scripts
are different.

## Improved Odia

Thanks to ଅଶୋକ ଦାସ୍ and ଅଭିଷେକ ଜେନା. Captions has been defined, a few
months have been fixed and there are a couple of alphabetic counters,
namely, `alphabetic` and `akshar`.

## ASCII encoding

As suggested by Udi Fogiel, with the macro `\asciiencoding` you can
retrieve and modify its value, which is determined by `babel` (it’s the
same used by `\ensureascii`).

## Fixes