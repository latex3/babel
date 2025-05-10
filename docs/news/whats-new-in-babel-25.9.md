# What's new in babel 25.9

**Draft**

## Prepending transforms®

Until now, transforms could be only added after all the previouly defined
ones. However, particularly with predefined transform, adding them
**before** other transforms can be useful. A new `prepend` option does
that. For example:
```
\babelprehyphenation[prepend]{hebrew}{-}{ string = ־ } % hyphen → maqaf
```

## New options for `layout`

The `layout` key now includes a couple of new options that do not
introduce new functionality. When this key is used with any options in
bidi documents, there are a few changes in `\@hangfrom` and also (only
`xelatex`, as it’s unnecesary in `lualatex`) in `\raggedright` and
`\raggedleft`. Using `pars` applies these adjustments even without
other options; conversely, `nopars` prevents these adjustments even
when other options are specified.

## `\BabelFootnote`

This tool is now available always, across all engines. Previously, it
was restricted to documents using the `bidi` option. There is no
inherent reason to limit this feature to bidirectional texts. For
instance, it can be useful in a Bulgarian document containing French
citations, where the footnotes should remain in Bulgarian.

## Fixes
