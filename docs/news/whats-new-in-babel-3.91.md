
# What's new in babel 3.91

2023-07-09

## Transform for Hebrew transliteration

Hebrew and Yiddish define a transliteration based on the system devised
by Christian Justen for `cjhebrew` (`transliteration.cj`). As with some
other transliterations, it has been chosen because it’s TeX-friendy,
ASCII and consistent. It departs, however, in a couple of points, which
don’t belong to the transliteration proper:
* Final letters are not handled, and therefore they must be entered
  explicitly. This conversion should be a general tool, as a separate
  transform (forthcoming).
* The furtive patah is not shifted. That should be done by the
  font (as, in fact, `cjhebrew` does).

## Fixes

* `alignat` and `alignat*` were missing in the list of
  `amsmath` environments patched for RTL mode. Now they should work (#208).
* The package option `layout=extras` was severely broken (#246).
* English and Arabic document broke when using paracol (#241).

## Experimental: transforming strings

The experimental (an unfinished) macro `\localeprehyphenation`applies
the prehyphenation transforms for the current locale to a string
(characters and spaces) and processes it in a fully expandable way (among
other limitations, the string can’t contain `]==]`).

Feedback is most welcome. Just open an issue.

The way it operates is admittedly rather cumbersome: it converts the
string to a node list, processes it, and converts it back to a string.

It takes an argument with the string to be converted. So, assuming the
`omega` transliteration for Greek is active, the following command
stores the string ‘γεια σας’ in `\mymacro` :
```tex
\edef\mymacro{\localeprehyphenation{geia sac}}
```
Being experimental, it may change or even vanish. 
