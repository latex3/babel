# What's new in babel 3.46

## More BCP 47

Now, BCP 47 codes may be used to select languages loaded as package or class options, if desired. Because this feature is mainly meant for special uses, it must be explicitly turned on with:
```
\babeladjust{ bcp47.toname = on }
```
The best place for this feature to be activated is just after loading `babel`, especially if there are some `\babelprovide`. For example, 
```
\documentclass{book}
\usepackage[spanish, english]{babel}
\babeladjust{ bcp47.toname = on }
\begin{document}
\abstractname                                 % Prints Abstract
\foreignlanguage[captions]{es}{\abstractname} % Prints Resumen
\end{document}
```

## Changes in `\BabelEnsureInfo`

Now, `\BabelEnsureInfo` loads the data for the requested languages as package or class options immediately, because they can be useful in the preamble and for other packages. They will be loaded after all in most cases, and the sooner, the better (and even if some language is not used in the document, it won't hurt).

## Fixes

### Getting rid of hyphens in XeTeX

There is no way to get rid of hyphens in XeTeX, and a trick based on setting the font `HyphenChar` to either 0 or ZERO WIDTH SPACE is necessary. Sadly, some fonts only include 0 and some others only include ZERO WIDTH SPACE. Furthermore, `HyphenChar` is not always safe because in some cases it may set the hyphenation char in other families based on the same font, even if other parameters like `Language` or `Script` are different. A `babel`-only solution has been devised to overcome these difficulties.

### Other fixes

* The `[..|..]` syntax in dates didn't recognize `digits`.
* `tag.bcp47` now contains what its name promises, instead of just the language subtag (#70).
* Locale info was not loaded if the name had uppercase letters in some OSs (#80).

## Note
 I had intended to include in this version some code to localize counter labels (mainly with relation to #74 and #78), but it turned out it's not as easy as it seemed, as I explain [here](../guides/localizing-counters.md).
