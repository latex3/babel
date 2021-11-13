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

\newattribute{\uppervowels}

\babelprehyphenation[attribute=\uppervowels]{english}
  { ([aeiou]) }
  { string = {1|aeiou|AEIOU} }

\begin{document}

A short text. {\setattribute{\uppervowels}{1}Another short text.} A short text.

\end{document}
```
This will print ‘A short text. AnOthEr shOrt tExt. A short text.’

The transform is applied when the corresponding attribute is set in all
nodes to be transformed. The ‘context’ in the pattern, that is, the
characters outside the group `()..()`, when used, are not taken into
account.






