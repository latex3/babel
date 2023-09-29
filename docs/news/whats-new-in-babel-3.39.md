# What's new in babel 3.39

2020-02-03

The first feature is another step in a revamping of the user interface, which will be one of the main tasks in the next versions. While ‘monolithic’ languages – those loaded as package or class options – are all what most users need and the recommended way to set up a monolingual document, the goal is to provide a sort of ‘service’ with a set of tools enabling users to create locales tailored to their own needs (the example below for transliterated Russian is a case in point).

## Locale loading on the fly

Very often, multilingual documents consist of a main language with small pieces of text in other languages (words, idioms, etc.). For these cases, `babel` now does not require declaring the secondary languages explicitly, because the basic settings are loaded on the fly when the language is selected or the font set.

This is particularly useful when there are short texts of this kind coming from an external source whose contents are not known on beforehand (for example, titles in a bibliography). A trivial example is:
```tex
\documentclass{article}
\usepackage[english]{babel}
\babelfont[russian]{rm}{FreeSerif}
\begin{document}
English. \foreignlanguage{russian}{Русский}.
\foreignlanguage{spanish}{Español}.
\end{document}
```
[**Update.** See also for `pdftex` [What's new in babel 3.84](whats-new-in-babel-3.84.md).]

## Improvements in `\babelposthyphenation` (lua)

Now captured chars can be mapped in the replacements. For example, if the first capture reads `([ΐΰ])`, the replacement could be `{1|ΐΰ|ίύ}`, which maps `ΐ` to `ί`, and `ΰ` to `ύ` - in other words, the diaeresis is removed.

Although the main purpose of this tool is non-standard hyphenation, it is a quite general tool which may actually be used for other transformations. [**Update**. See also `\babelprehyphenation`, introduced in a preliminary form in 3.44, which is a better solution in cases like this.]  For example, to enter _ž_ as `zh` and _š_ as `sh` in a newly created locale for transliterated Russian:

```tex
\babelprovide[hyphenrules=+]{russian-latin}
\babelposthyphenation{russian-latin}{([sz])h}
{
      { string = {1|sz|šž} },
  remove 
}
```

Another change is now `\babelposthyphenation` activates automatically this feature.

## Assign specific chars to a locale (lua)

`\babelcharproperty` has been extended with a new property to add (or remove) a character (or a range of characters) from the default list used by `onchar` (namely, the script block). For example:
```tex
\babelcharproperty{`,}{locale}{english}
```

## Fixes

* With `bidi=basic` in `babel` and recent versions of `luaotfload`, which do bidi writing, mirrored characters where sometimes reversed _twice_, so that they stayed the same (lua).

* Line breaking in Sichuan Yi was not activated (lua).

* `bidi=bidi-l` and `bidi=bidi-r` were not correctly activated (xe).

* Thai and Turkish raised an error if `\babelprovide` did not have `ìmport`.
