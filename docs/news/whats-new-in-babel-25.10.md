# What's new in babel 25.10

2026-06-10

## Fixes

* A locale in `\DocumentMetadata` not recognized by `babel` raised a
  cryptic error. Now a more meaningful one is shown. See the [news page
  for
  25.9](https://latex3.github.io/babel/news/whats-new-in-babel-25.9.html)
  and [issue 343](https://github.com/latex3/babel/issues/343). A new
  locale tag `und` has been added, whose purpose it to serve as
  fallback. Currently, there is only an `ini` file, but more will be
  added in the near future for several scripts.

* Error with `\ShowLocaleProperties` with some locales in Unicode
  engines.

## Transliteration of Russian

A transform is provided for the transliteration of Russian using the
norm GOST 7.79-2000 System B, named `transliteration.gost779b`. It
requires only ASCII characters and is reversible, which makes it
particularly well suited for LaTeX. As explained in the norm
(translated from Russian),
> The unambiguous reversibility [...] is ensured by the specific use of
> the Latin letters h, y, c and the symbol `` ` ``. The letters h, y do
> not represent any Cyrillic letters by themselves and are used only in
> letter combinations.

Some notes:

* The Cyrillic ‘і’ is entered always as `` i` ``.  
* The Cyrillic ‘ч’ can be entered as `c` and `cz`.  
* The characters ‘ь’ and ‘ъ’ are entered as `` ` `` or ``` `` ```, but
  no provision has been made in the norm to distinguish the case. This
  transform uppercases them if preceded by a uppercase letter.

You can see the table
[here](https://en.wikipedia.org/wiki/GOST_7.79-2000#GOST_7.79_System_B)
(which also includes rules for other Cyrillic languages, not yet
implemented).

By applying these principles, you can devise your own (non-standard)
extensions For example, ‘ꙋ’ can be `` u` ``, and ‘ѡ’ can be ``
o` ``. They must be prepended to the transform, so:
{% raw  %}
```tex
\babelprehyphenation[prepend, label = transliteration.gost779b]{russian}
  { ([UOuo])` }
  { string = {1|UOuo|ꙊѠꙋѡ} }
```
{% endraw %}

## Other changes

Tagging PDF Span elements requires horizontal mode. If
`\DocumentMetadata` is used we also force it with `\foreignlanguage`
(it was already done in bidi texts).

