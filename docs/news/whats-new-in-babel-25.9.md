# What's new in babel 25.9

2025-05-14

<span style="color:red;">⚠</span> **Important note about an upcoming
change.** Plans are underway for next fall or winter to eliminate the
need to explicitly specify `provide=` when loading a language not
supported as an ldf, thereby unifying the interface. Depending on the
language (and possibly the engine), `babel` will select the most
suitable method. See [this
post](https://tex.stackexchange.com/a/727114/5735) in
tex.stackexchange. 

## Prepending transforms®

Until now, transforms could be only added after all the previouly defined
ones. However, particularly with predefined transform, adding them
**before** other transforms can be useful. A new `prepend` option does
that. For example:
```tex
\babelprehyphenation[prepend]{hebrew}{-}{ string = ־ } % hyphen → maqaf
```

## New options for `layout`

The `layout` key now includes a couple of new options, although they do
not introduce new functionality. When this key is used with any options
in bidi documents, there are a few changes in `\@hangfrom` and also
(only `xelatex`, as it’s unnecesary in `lualatex`) in `\raggedright`
and `\raggedleft`. Using `pars` applies these adjustments even without
other options; conversely, `nopars` prevents these adjustments even
when other options are specified.

## `\BabelFootnote`

This tool is now available always, across all engines. Previously, it
was restricted to documents using the `bidi` option. There is no
inherent reason to limit this feature to bidirectional texts. For
instance, it can be useful in a Bulgarian document containing French
citations, where the footnotes should remain in Bulgarian.

This change also fixes #324.
