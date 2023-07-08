
# What's new in babel 3.91

**Draft**

## Transform for Hebrew transliteration

Hebrew [and Yiddish, pending] defines a transliteration based on on the
system devised by Christian Justen for `cjhebrew`. As with some other
transliterations, it has been chosen because it’s TeX-friendy, ASCII
and consistent. It departs, however, in a couple of points, which don’t
belong to the transliteration proper:
* Final letters are not handled, and therefore they must be entered
  explicitly. This conversion should be a general tool, as a separate
  transform (forthcoming).
* The furtive patah is not shifted. I think that should be done by the
  font (as, in fact, cjhebrew does).
  
## Fixes

* `alignat` and `alignat*` were missing in the list of
  `amsmath`environments patched for they to work in RTL mode (#208).
* The package option `layout=extras` was severely broken (#246).
* English and Arabic document breaks when using paracol (#241).

## Experimental: transforming strings


The experimental (an unfinished) macro `\localeprehyphenation`applies
the prehyphenation transforms for the current locale to a string
(letters and spaces) and processes it in a fully expandable way (among
other limitations, the string can’t contain |]==]|).

The way it operates is admittedly rather cumbersome: it converts the
string to a node list, processes it, and converts it back to a string.

It takes an argument with the string to be converted. So, assuming the
`omega` transliteration for Greek is active, the following command stores
in `\mymacro` the string ‘γεια σας’:
```tex
\edef\mymacro{\localeprehyphenation{geia sac}}
```
