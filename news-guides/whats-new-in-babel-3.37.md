# What's new in babel 3.37

2019-12-08

## Non-standard hyphenation

With `luatex` it is now possible to define non-standard hyphenation rules, like `f-f` → `ff-f`, repeated hyphen, ranked rules (or more exactly, “penalized”). No rules are currently provided by default (this is left for a later version), but they can be defined as shown in the following example:

    \babelposthyphenation{ngerman}{([fmtrp]) | {1}}
    {
      { no = {1}, pre = {1}{1}-}, % Replace first char with disc
      remove,                     % Remove automatic disc
      {}                          % Keep last char, untouched
    }

For a more detailed description and some examples, see [Non-standard hyphenation with luatex](https://github.com/latex3/babel/wiki/Non%E2%80%93standard-hyphenation-with-luatex).



## Add and modify values from `ini` files

There is a way to modify the values of `ini` files when they get loaded with `\babelprovide`. To set, say, `digits.native` in the `numbers` section, use something like `numbers/digits.native=abcdefghij` (note the bar between the section and the key name). New keys may be added, too.

## Changes in line breaking

Line breaking in South East Asian and CKJ are assimilated to hyphenation, and it is activated even without `import` (lua).