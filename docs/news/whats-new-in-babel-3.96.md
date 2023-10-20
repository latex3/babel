# What's new in babel 3.96

** Draft **

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

## ASCII encoding

As suggested by Udi Fogiel, with the macro `\asciiencoding` you can
retrieve and modify its value, which is determined by `babel` (it’s the
same used in `\ensureascii`).

## Fixes