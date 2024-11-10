# What's new in babel 24.1

2024-01-07

A new version numbering scheme is adopted, better suited to the rapid
release cycle of `babel` (every few weeks). The first release in year
2024 is `24.1` (there is no zeroth release 🙂).

## More ‘interchar’

There is a new key in `\babelprovide` for ‘interchar’ declarations,
predefined in the corresponding `babel-<locale.name>.tex` file (as set
in the `ini` file with the key `require.babel`).

There can be several ‘interchar’ labels in `interchar`, separated with
spaces.

A new macro filters in the `tex` file which ones are set up, namely
`\IfBabelIntercharT{<list-of-interchar>}{<code>}` — if any of the
values in the `\babelprovide` are listed, then the `<code>` is executed.

See the following section for an example.

## Spacing in French

Firstly, remember `ini` files are not necessarily a replacement for
`ldf` files. For a complete localization for French, prefer default the
style by Daniel Flipo. The `ini` locale is mainly intended for French
as a secondary language (although it can also be used as the primary
language, if you like).

A set of rules dfor proper spacing in French are now `predefined` when the
`ini` locale files are loaded. The are activaded as follows. With
`xetex`:
```tex
\babelprovide[interchar=puntuation.space, import, main]{french}
```
And with `luatex`:
```tex
\babelprovide[transforms=puntuation.space, import, main]{french}
```

(Incidentally, a couple of wrong names in the French locale `tex` files
has been fixed.)

## Improved Gujarati

Thanks to [Kuldip Pipaliya](https://github.com/kuldipem) (@kuldipem).


