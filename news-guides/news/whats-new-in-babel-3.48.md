# What's new in babel 3.48

2020-09-01

For the reasons explained [here](../guides/localizing-counters.md), the new features for labels are still somewhat tentative.

## Labels with `ini` files

### Combining counters with captions

Captions for numbered elements are hardcoded with the counter placed after it, clearly having English and a few other languages in mind. But in Hungarian, for example, the counter comes before, and in CJK languages it can be even surrounded by two strings (第 1 章). Now, keys in the `captions` section ending with `.template` set how the elements are ordered.

For example:
```
[captions]
chapter.template = [[prechapter]] [chapter] [[postchapter]]
prechapter = 第
postchapter = 章
```
Here `[[prechapter]]` stands for `\prechaptername` and `[chapter]` for `\thechapter`.
 
The captions allowing this king of templating are `chapter`, `appendix` in `book`-like formats (be aware the counter in appendices is still usually `chapter`), `part`, `figure`, and `table`.

⚠ It works with standard classes and many others based on them, but sadly the way most classes deal with chapter captions is somewhat convoluted and the solution applied currently can change in the future to improve it. If you want to help, you can test different classes and report any issues you find.

### Mapping counters

There is a new section in `ini`  files for labels and how counters are used in some contexts.

As a first tool, there is a way to map some standard counters to another ones, with keys ending with `map`, preceded by `arabic`, `roman`, `Roman`, `alph`, `Alph`, `fnsymbol`. For example:
```
[labels]
; Map roman to informal (eg, Japanese 一 二 三 四 etc.):
roman.map = informal   
```
It must be activated with `labels = map` in `\babelprovide`.

Those keys do _not_ redefine the original counters. Instead, a list of `\the...` is traversed and the original counter is replaced by the new one in a locale-dependent way. With this example, `\roman` still prints a roman numeral, but `\theenumiii` (in standard classes) is modified so that the `informal` counter is printed if the corresponding language is in force.

Some counters may have several definitions with hardcoded changes (a typical case is `\thefootnote`), so the remark above also applies here: the current solution can change in the future to improve it. Furthermore, changes are language dependent, which makes sense in, say, `enumi`, but not in `footnote`.

## Changes in ini files

### Japanese, Chinese and Korean

Using the previous tools, and the new captions `prechapter`, `postchapter` and the like, the corresponding labels are correctly rendered in standard classes. However, note `\thecounter` is not modified, which is relevant for TOCs and cross references.

The comments in the manual about CJK languages is still valid —usually a dedicated framework is preferred.

### Hungarian

The same for chapter, appendix, figure and table.

## Fixes

* `\babelshorthand` didn't work with some dialects (#91).
* Not really a fix, but now we have a warning instead of an error if neither 0 nor ZERO WIDTH SPACE is found in Southeast Asian languages, which I think is more useful.
* `\selectlanguage` and `otherlanguage` raised an error inside tabular (#93).



