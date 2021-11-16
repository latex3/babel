# What's new in babel 3.67

*Under development.*

## Executing code based on the selector

`\IfBabelSelectorTF`. Values are `select`, `other`, `foreign`, `other*`
(and also `foreign*` for the tentative starred version).
Eg, `\IfBabelSelectorTF{other, other*}{..]{..}` is true with
environments. Mainly for extras.

## Turning on and off transforms

Until now, the only way to turn on or off a feature was by switching
the language, Now, you can associate a user defined transform to an
attribute, so that it’s active only when it’s set (currently its
attribute value is ignored). With this mechanism transforms can be set
or unset even in the middle of paragraphs, and applied to single
words.

To define, set and unset the attribute, the LaTeX kernel provides the
macros `\newattribute`, `\setattribute` and `\unsetattribute`. Here is
an example of how to use this feature:
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
It will print:
> Hello! Hello ! Hello ! Hello! Hello!<br>
> Hello ! Hello! Hello! Hello! Hello !

The transform is applied when the corresponding attribute is set in all
nodes to be transformed, which explains why there is no space in the
4th ‘Hello’. The ‘context’ in the pattern, that is, the characters
outside the group `()..()`, when used, are not taken into account.






