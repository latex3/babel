# What's new in babel 24.1

**Draft**

A new version numbering scheme is adopted, better suited to the rapid
release cycle of `babel` (every few weeks). The first release in year
2024 is `24.1` (there is no zeroth release 🙂).

## More 'interchar'

There is a new key in `\babelprovide` for predefined ‘interchar’
declarations. A set of declarations has been added for French, with the
name `punctuation.space`:
```tex
\babelprovide[interchar=puntuation.space, import, main]{french}
```

‘Interchar’ declarations are done in the corresponding
`babel-<locale.name>.tex` file, with the help of a new macro to filter
which ones are setup, namely `\IfBabelIntercharT{<list-of-interchar>`.

(Incidentally, a couple of wrong names in the French locale `tex` files
has been fixed.)

## Improved Gujarati

Thanks to [Kuldip Pipaliya](https://github.com/kuldipem) (@kuldipem).


