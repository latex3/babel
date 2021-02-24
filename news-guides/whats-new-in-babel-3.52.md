# What's new in babel 3.52

2020-12-16

⚠ If you upgrade `babel` and you need `afrikaans` you must upgrade `babel-dutch`, too.

## Improvements in `\babel(pre|post)hyphenation`

There is a couple of new keys (`penalty` and `insert`) for the replacement items, which are useful not only for hyphenated languages, but also in CJK and Southeast Asian scripts to fine tune line breaking in special cases.

The code has been refactored and in many cases there will be a huge speed boost (×10 in some tests). The main bottleneck is still 1-∞ (ie, a multiletter `string`).

### Penalties

Penalties can be inserted with both `\babelprehyphenation` and `\babelposthyphenation` with the key `penalty`, which can be combined (and usually must be) with `insert` (described below). Since in `\babelprehyphenation` `|` stands for a space, you can prevent, for example, the word «a» from being at the beginning of a line with:
```
\babelprehyphenation{english}{|a|}{
 {insert, penalty=10000},
 {}, {}, {}}
```

### Inserted items

A new key `insert` adds the node before the ‘current’ one, instead of replacing it. It must be the first key in the replacement item specification and works not only with the new `penalty` but also with discretionaries (the latter only with `\babelposthyphenation`). The example above matches 3 items, but there are 4 replacements, so that ‹space-“a”-space› becomes ‹penalty-space-“a”-space›. ⚠ There is currently a limitation, yet – only an item can be inserted at each matched item (in this example, you cannot insert, say, another penalty before the first space).

## Fixes

* A couple of issues with \localeinfo and \getlocaleproperty (#102, #105).
* Save size overflow with many \selectlanguage's (#109).
* Albanian: fix a typo in contents name (#104).
* Missing ‘Unused global option(s)’ warning (#110).


