# What's new in babel 3.85

2023-01-23

## Separators in `layout`

For technical reasons, spaces couldn’t be used formerly as separators in the
list of values passed to `layout`, and therefore `babel` replaced them
with dots. This restriction has been lifted recently in the
LaTeX kernel, and therefore spaces are fine and the recommended syntax. So, now
```tex
\usepackage[arabic, provide=*, bidi=basic, layout=captions lists]{babel}
```
is to be preferred to
```tex
\usepackage[arabic, provide=*, bidi=basic, layout=captions.lists]{babel}
```

## Enabling and disabling transforms 

A higher level interface to enable y disable transforms has been
devised (see the lower level
[here](https://latex3.github.io/babel/news/whats-new-in-babel-3.67.html#turning-on-and-off-transforms),
based on the transform label. There are now two macros for this
purpose, as shown in the following example:
```tex
\documentclass{article}

\usepackage[latin, provide=*]{babel}
\babelprovide[transforms = letters.uv]{latin}
\begin{document}

VOLUP volup 
\disablelocaletransform{letters.uv} VOLUP volup 
\enablelocaletransform{letters.uv}  VOLUP volup

\end{document}
```
This prints “VOLVP uolup VOLUP volup VOLVP uolup”.

They are applied to the current locale.

## Font-dependent transforms

Sometimes, a transform doesn’t work well in all fonts. For example, the
rules for Arabic *kashida* can differ depending on the font design.
Besides a label, a list of fonts can be provided with a new key
`fonts=` as shown:
```tex
\babelprehyphenation[label=transform.name, fonts=rm sf]{..}{..}
```
Transforms are enabled or disabled with font selectors. Tags can adopt
two forms: a family, such as `rm` or `tt`, or the set
family/series/shape. If a font matches any of these conditions, the
transform is enabled (which means he second tag in `rm rm/n/it` is
redundant). There are no wildcards; so, for italics you may want to
write something like `sf/m/it sf/b/it`.

Transforms set for specific fonts (at least once in any language) are
always reset with a font selector. Currently they cannot be enabled or
disabled with the macros described in the previous section.

In `\babelprovide`, transform labels can be tagged before its name,
with a list separated with colonsm like:
```tex
transforms = rm:sf:transform.name
```

## Fixes

The main fix is related to `tabular`. When attempting to fix `amsmath`,
bidi text was broken if `layout=tabular` was not set. Its behavior
has been improved, but some issues remain (for example, position
of vertical rules with `|`).

Other fixes are:
* `\babelprehyphenation` was not applied with `onchar`.
* In some rare cases the hyphenrules weren’t correctly set.

