# What's new in babel 3.67

2021-11-29

## Executing code based on the selector

Sometimes a different setup is desired depending on the selector used,
and `\IfBabelSelectorTF{<selectors>}{<true>}{<false>}` is provided for
this purpose. Values allowed in `<selectors>` are `select`, `other`,
`foreign`, `other*` (and also `foreign*` for the tentative starred
version), and it can consist of a comma-separated list. For example:
```tex
\IfBabelSelectorTF{other, other*}{A}{B}
```
is true with these two environment selectors.

Its natural place of use is in hooks or in `\extras<language>`.

Bear in mind `\selectlanguage` can be automatically executed, in some
cases, in the auxiliary files, at heads and foots, and after the
environment `otherlanguage*`.

## Turning on and off transforms

[**Update**. A higher level interface was introduced in version
  [3.85](whats-new-in-babel-3.85.html).]

Until now, the only way to turn on or off a feature was by switching
the language, Now, you can associate a user defined transform to an
attribute, so that it’s active only when it’s set (currently its
attribute value is ignored). With this mechanism transforms can be set
or unset even in the middle of paragraphs, and applied to single
words.

To define, set and unset the attribute, the LaTeX kernel provides the
macros `\newattribute`, `\setattribute` and `\unsetattribute`. Here is
an example of how to use this feature:
{% raw  %}
```tex
\documentclass{article}

\usepackage[english]{babel}

\newattribute{\spcexclam} % Unset by default

\babelprehyphenation[attribute=\spcexclam]{english}{ {a}! }{
  {},
  { insert, penalty = 10000 },
  { insert, space=.3 .05 0, data = 1 },
  {}
}

\newcommand\withspc[1]{{\setattribute{\spcexclam}{1}#1}}
\newcommand\withoutspc[1]{{\unsetattribute{\spcexclam}#1}}

\begin{document}

Hello! \withspc{Hello!} Hol\withspc{a!} Hello\withspc{!} Hello!

\setattribute{\spcexclam}{1}

Hello! \withoutspc{Hello!} Hol\withoutspc{a!} Hello\withoutspc{!} Hello!

\end{document}
```
{% endraw %}
It will print:
> Hello! Hello ! Hello ! Hello! Hello!<br>
> Hello ! Hello! Hello! Hello! Hello !

The transform is applied when the corresponding attribute is set in all
nodes to be transformed, which explains why there is no space in the
4th ‘Hello’. The ‘context’ in the pattern, that is, the characters
outside the group `()..()`, when used, are not taken into account.

Transforms predefined in the `ini` locale files can be made
attribute-dependent, too (in `\babelprovide`). When an attribute
between parenthesis is inserted all subsequent transforms will be
assigned to it (up to the list end or another attribute). For example,
and provided an attribute called `\withsigmafinal` has been defined:
```tex
transforms = transliteration.omega (\withsigmafinal) sigma.final
```
This applies `transliteration.omega` always, but `sigma.final`only when
`\withsigmafinal` is set. 

## Transforms for Latin

They are defined in all variants.

`digraphs.ligatures` Replaces the groups *ae*, *AE*, *oe*, *OE* with
*æ*, *Æ*, *œ*, *Œ*.

`letters.noj` Replaces *j*, *J* with *i*, *I*.

`letters.uv` Replaces *v*, *U* with *u*, *V*.







