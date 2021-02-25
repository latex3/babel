# What's new in babel 3.51

2020-10-27

## Common interface to redefine captions 

The way strings for captions are defined has evolved to overcome some limitations in older versions, and as a result there were several procedures to modify them, depending on the language or how the language is loaded. Now they can be redefined with `\setlocalecaption`, as for instance:
```tex
\setlocalecaption{english}{contents}{Table of Contents}
```

Here the second argument is the caption name as string without the trailing `name`. This example also shows caption names are often a stylistic choice.

This works not only with existing caption names, because it also serves to define new ones by setting the caption name to the name of your choice (`name` will be postpended, so that `annex` defines `\annexname`). Captions so defined or redefined behave with the ‘new way’ described in the manual (that is, the ‘switcher’ and the captions string are separate macros).

## Fixes

* Error when loading a language on the fly in `tabular` (#97).
* `hyphenrules` raised an error with 'base' option (#59).
* Better handling of autoloaded languages (eg, catcodes).
* An error was raised with CJK and a null font (#99) in `luatex`.
* `language.tag.bcp47` and `tag.ini` in `\localeinfo` didn't work (#102).

## Known issues (and request for help)

⚠ As of 2010-10 `layout=graphics` doesn't work with `picture` anymore. I'm investigating how the new code for `pict2e` (v 0.4) works to find a solution (v 0.3 worked), but it can take me some time. Feel free to make a pull request with a fix, if you have found it. (Issue #98). **Workaround**: Instead of `layout=graphics`, add in the preamble `\AddToHook{env/picture/begin}{\bodydir TLT}` and then mark explicitly the text language.


⚠ Some ‘exotic’ combinations like bold + small caps may not work if there is not a global font declaration with `\babelfont{...}{...}` (without the first optional argument). The usual 4 basic combinations should be fine. (Issue #92)

## Changes in `ini` files

* Set `frenchspacing` to `yes` in many files, including Dutch and Icelandic (#49).