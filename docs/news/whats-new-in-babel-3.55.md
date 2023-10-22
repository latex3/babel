# What's new in babel 3.55

2021-03-03

The main change in this version is internal, with a refactoring of the loader of `ini` files.

## Graphics

There is a somewhat tentative attempt to deal with cases like [this
one](https://github.com/latex3/babel/issues/95#issuecomment-783658342).
Now `babel` places the “origin” of the `pgfpicture` box at the lower left
corner and attempts to render RTL text correctly.

## Uyghur

Tentative captions provided by [Osman Tursun](https://github.com/neouyghur).

## Fixes

* Index name in the `ini` file for Romanian has been fixed (#117).
* Missing lines in ngermanb.sty (#118).