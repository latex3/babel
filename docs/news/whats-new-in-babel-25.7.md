# What's new in babel 25.7

2025-04-14

## Showing Transforms

The transform mechanism offers a flexible approach to fine-grained
linguistic and typographic adjustments, which is beign proven to be an
invaluable tool for multilingual typesetting. By allowing users to
define precise rules for character substitution, insertion, and even
deletion based on language context, `babel`’s transform capabilities
move beyond simple font and locale switching, by enabling the creation
of truly nuanced and typographically accurate documents, catering to
the specific requirements of diverse languages and scripts with a level
of control that traditional LaTeX often struggles to achieve.

However, no tools were provided for users to better understand what
transforms were actually doing, so a macro has been added:
`\ShowLocaleTransforms{<text>}`, which prints to the log file a basic
breakdown of the currenlty active transformations on `<text>`,
facilitating easier debugging. In the process, penalties,
discretionaries, etc., can be inserted, which are currently printed as
a boxed ‘?’, as a boxed ‘US’ (because it’s the ‘unit separator’) or in
another way (in some cases, it’s a temporary node which can get
eventually discarded). It’s still somewhat tentative.

A simple example:
```tex
\documentclass{article}

\usepackage[german]{babel}
\babelprovide[transforms=longs.unifraktur]{german}

\begin{document}
\ShowBabelTransforms{Das ist wunderbar}
\end{document}
```
will show:
```
==== Showing prehyphenation ====
Das ist wunderbar
--------------------------------

==== Showing posthyphenation ====
Das
ist
>  iſt
wun|der|bar
--------------------------------
```
Even if there are no active transforms, you can use it to see the
inserted discretionaries.

## Fixes

- Incorrect kashida placement (#336).
- Ancient Hebrew vowel characters not recognised as Hebrew text (#337).
- babel-cy.ini captions and captions.licr inconsistent (#338).

## Locales

New bare minimum locale for Ancient Hebrew (tag `hbo`).



