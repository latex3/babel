# What's new in babel 25.16

2025-11-23

## Julian calendar

Currently there are only declarations for `greek`, `monotonicgreek` and
`polytonicgreek` (although it’s possible to create the corresponding
declarations in other locales). Years begin on January 1st (dual dates
not yet supported). Requires the `ini` mechanism and a Unicode engine.

Here are examples showing how to set the calendar globally for
`polytonicgreek`:
```tex
\documentclass{article}

\year=2025 \month=6 \day=15

\usepackage
  [polytonicgreek,
   provide={calendar=julian}
  {babel}
  
\babelfont{rm}{FreeSerif}

\begin{document}

\today

\end{document}
```
prints:
> 2 Ἰουνίου 2025

With
```tex
\usepackage
  [polytonicgreek,
   provide={calendar=julian.letters}
  {babel}
```
it prints:
> βʹ Ἰουνίου ͵βκεʹ

## Counters without keraia

Contributed by [Nikos Platis](https://github.com/nplatis) and named
`lower.modern.nonumeralsign` and `upper.modern.nonumeralsign`. With
`greek`, `monotonicgreek` and `polytonicgreek`.

## Other changes

Many unnecessary `\space`’s have been removed from the `ini` files.
