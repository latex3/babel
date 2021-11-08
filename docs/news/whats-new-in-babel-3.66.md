# What's new in babel 3.66

2021-11-08

## Transforms for Greek

`transliteration.omega`

Although the provided combinations are no exactly the same, this
transform follows the syntax of the system devised by Yannis
Haralambous for Omega: `=` for circumflex, `v` for digamma, `=p`,
`=q` and `=s` for ϡ, ϟ and ϛ, and so on. For better compatibility with
Levy’s system, `~` (as ‘string’) is an alternative to `=`. `'` is tonos
in Monotonic Greek, but oxia in Polytonic and Ancient Greek. For
completeness, Monotonic Greek includes the full set of rules.

If you prefer the tilde, you must make it a ‘string’. An option is the
following:
```tex
\defineshorthand{~}{\string~}
```

`sigma.final`

The transliteration system above, unlike Levy’s, doesn’t convert the
sigma at the end of a word (on purpose). This transforms does it. To
prevent the conversion (an abbreviation, for example), write `"s`.

## Fixes for bidi texts

A few issues related to graphics in bidi texts has been fixed
particularly [#145](https://github.com/latex3/babel/issues/145) and
[#146](https://github.com/latex3/babel/issues/146), with the solutions
proposed by Salim Bou.


