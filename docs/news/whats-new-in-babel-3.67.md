# What's new in babel 3.67

*Under development.*

## Executing code based on the selector

`\IfBabelSelectorTF`. Values are `select`, `other`, `foreign`, `other*`
(and also `foreign*` for the tentative starred version).
Eg, `\IfBabelSelectorTF{other, other*}{..]{..}` is true with
environments. Mainly for extras.

