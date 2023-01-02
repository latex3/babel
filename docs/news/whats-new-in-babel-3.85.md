# What's new in babel 3.85

**Draft. Work in progress**

## Separators in `layout`

For technical reasons, spaces couldn’t be used as separators in the
list of values passed to `layout`, and therefore `babel` replaced them
with dots. This restriction has been lifted recently in the
LaTeX kernel, and therefore spaces are fine and the recommended syntax. So, now
```tex
\usepackage[arabic, provide=*, bidi=basic, layout=captions lists]{babel}
```
is preferred to
```tex
\usepackage[arabic, provide=*,bidi=basic, layout=captions.lists]{babel}
```

## Enabling and disabling transforms 

A higher level interface to enable y disable transforms has been
devised (see the lower level here), based on the transform label.
There are now two macros for this purpose, as shown in the following
example:
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

**Work in progress**

Sometimes, a transform doesn’t work well in all fonts. For example, the
rules for Arabic kashida can differ depending on the font design.
Besides a label, a list of fonts can be provided with a new key
`fonts=` as shown:
```tex
\babelprehyphenation[label=transform.name, fonts=rm sf]{..}{..}
```
Transforms are enabled or disabled with font selectors. Tags can
adopt two forms: a family, such as `rm` or `tt`, or the set
family/series/shape. If a font matches one of these conditions, the
transform is enabled. The second tag in `rm rm/n/it` is redundant.
There are no wildcards; so, for italics you may want to write something
like `sf/m/it sf/b/it`.

Transforms set for specific fonts (at least once in any language) are
always reset with a font selector. Font settings take precedence over
`\enablelocaletransform` and `\disablelocaletransform`, so that a
`\selectfont` can re-enable or re-disable the transform.

In `\babelprovide`, transform labels can be tagged before its name,
with a list separated with colonsm like:
```tex
transforms = rm:sf:transform.name
```

## Fixes

