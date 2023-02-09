# What's new in babel 3.86

**Draft**

## `tabular`

In bidi texts there are two modes for `tabular`, namely, the default
one, which orders columns from left to right, and `layout=tabular`, with
all-RTL tables. When these two modes were introduced I was completely
convinced the default mode would be a lot more simple than the all-RTL
one. It turns out it was quite the opposite, for the reasons explained in
...

In this version, there is a new solution based on patching the
internals of the LaTeX `tabular`, as well as the packages `array` and
`colortbl`. 

## `\localerestoredirs` (lua)

This command resets the internal text, paragraph and body directions to
those of the current locale (if necessary). Sometimes changing directly
these values can be useful for some hacks, and this command helps in
restoring the directions to the correct ones. It can be used in '>'
arguments of `array`, too.

## `\babeladjust`

There is a new key in case you want to deal directly with directions in
math: `bidi.math`, with values `on` and `off`. Currently it can be used
in the preamble only and affects the whole document.

Also, `bidi.tabular` can be used to (mostly) disable the changes in the
`tabular` default mode. It can be used only on the preamble. There are
no changes with the `layout=tabular` mode.

## Changes in `ini` files

* Use more common term for glossary in `lithuanian` (thanks to Andrius
  Pukšta, @yjhn).
* Added diacritics to the rules for `kashida.plain` in `persian`.