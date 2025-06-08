# What's new in babel 25.10

**Draft**

## Fixes

* An locale not recognized by `babel` raised a crytic error. Now a more
  meaninful one is shown. See the news page for 25.9 and issue ....

A new locale name und has been added, whose purpose it to serve as
fallback. Currently, there is only an `ini` file, but more will be
added in the near future for several scripts.



## Transliteration of Russian

A transform is provided for the transliteration of Russian using the
norm GOST 7.79-2000 System B, named `transliteration.gost779b`. It
requires only ASCII characters and is reversible, which makes it
particularly suitable for LaTeX. As explained in the norm “...”
(although the grave accent is also used).

Some notes:

* The Cyrillic ‘і’ is entered always as `` i` ``.  
* The Cyrillic ‘ч’ can be entered as `c` and `cz`.  
* The characters ‘ь’ and ‘ъ’ are entered as `` ` `` or ``` `` ```, but
  no provision has been made in the norm to distinguish the case. This
  transform uppercases them if preceded by a uppercase letter.
  
You can see the table here (which also includes rules for other
Cyrillic languages, not yet implemented).

By applying these principles, you can devise your own (non-standard)
extensions For example, ‘ꙋ’ can be `` u` ``, and ‘ѡ’ can be ``
o` ``. They must be prepended to the transform, so:
{% raw  %}
```tex
\babelprehyphenation[prepend, label = transliteration.gost00b]{russian}
  { ([UOuo])` }
  { string = {1|UOuo|ꙊѠꙋѡ} }
```
{% endraw %}

## Other changes


