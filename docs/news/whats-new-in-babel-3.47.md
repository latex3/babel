# What's new in babel 3.47

2020-07-13

## Creating new locales

Creating a new locale has never been easier, thanks to a set of pre-built `ini`+`tex` templates for about 500 languages. See [Locale templates](../guides/list-of-locale-templates.md). Remember there is also a tool to create `ldf` files with the help of a GUI [here](http://www.texnia.com/incubator.html).

## Fixes

* Spurious spaces when autoloading locales (bug introduced in 3.46 when fixing #80).
* In dtx files, autoloading printed some spurious text (because % is set to ignore, #87).

## Other changes

* A new tool: `\getlocaleproperty*`, which doesn't raise an error.