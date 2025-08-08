# What's new in babel 25.12

2025-08-03

## Option `mapdot`

With `mapdot=<text>` as an option in ‘provide’, the standard counters
(those starting with `\the...`) are traversed to replace each dot by
the provided text in a locale-dependent way. Without a value, a default is
used — currenty the only default value is for the Arabic (`ar`) locales,
which is set to a hyphen (the zero and the dot are very similar in
this script).

For example, with the default value:
```tex
\usepackage[arabic, provide={mapdigits, mapdot}, bidi=basic]{babel}
```
With a comma and a non-breaking space, it’s `mapdot= ،~`.

This option doesn’t replace the definition of these macros by
completely new ones. Instead, it modifies them. This replacement may
fail in some classes (for example and interestingly, it works with
`bbook`, but it doesn’t with the companion `barticle`).

Two notes:

* The space reserved for these counters (e.g., in the table of
  contents) remains unchanged. The standard classes have been designed
  with a certain font an a certain layout in mind, and if the counters
  are modified, some formatting glitches may appear (usually minor). This
  is general problem, not restricted to the this particular adjustment,
  but I think it’s worth mentioning because it’s often overlooked.
  
* `\label` doesn’t currenty save the language. It’s a general problem,
  too, in the sense `\label` actually saves nothing about the context.
  Keep this in mind in multilingual documents, because the corresponding
  `\ref` may not be what you would expect if the script is different.
  
## Fixes 

* Fix misaligned first line with kashida inside a \vbox (tsx747027).




