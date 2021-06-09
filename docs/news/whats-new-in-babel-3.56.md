# What's new in babel 3.56

2021-03-24

The concept of ‘transform’ (requires `luatex`) is introduced, which
embraces `\babelprehyphenation` and `\babelposthyphenation` and it's
meant as a way to process the text at the typesetting level in several
language-dependent ways, like non-standard hyphenation, special line
breaking rules, script to script conversion, spacing conventions and so
on. They are conceptually similar to those in Unicode, but not the
same, because in `babel` they are focused on the typographical level.

Transforms have been available for more than a year, but in this
version they can be defined in `ini`files, too.

## Inserting spaces (with `luatex`)

Some languages require readjusting the space before or after some
characters (a well-known case is French). There is a new key to add a
space, with takes 3 numbers for the natural width, the `plus` and the
`minus` in em units. You may need to set where the quad value is taken
from with `data`:
```tex
\babelprehyphenation{french}{ «{a} }{
  {},
  { insert, penalty = 10000 }, 
  { insert, space= .2 .05 0, data = 1 },
  {}
}
\babelprehyphenation{french}{ «|{a} }{
  {},
  { insert, penalty = 10000 },
  { space= .2 .05 0, data = 1 },
  {}
}
```
Alternatively, the first one can be defined as follows if it comes
before the second declaration (because the pattern of the latter
then matches):
```tex
\babelprehyphenation{french}{ «{a} }{
  {},
  { insert, space= .2 .05 0, data = 1 },
  {}
}
```

An alternative, which is more useful in many cases, is `spacefactor`,
which takes 3 numbers, too, but they are factors to be applied to the
word separation in the font.
```tex
\babelprehyphenation{french}{ «{a} }{
  {}, 
  { insert, penalty = 10000 }, 
  { insert, spacefactor= .8 .3 .8, data = 1 },
  {}
}
```

As you can see, now multiple insertions are allowed, which is often
necessary when a space is added.

In addition, the code has been refactored, to improve both stability
with overlapping patterns and speed. There are still some issues to be
sorted out, like the behavior in verbatim mode.

## Transforms in `ini` files

Based on the two macros above, `ini` files can define ‘transforms’.
```ini
[transforms.prehyphenation]
space.punctuation.1.0 = { «{a} }
space.punctuation.1.1 = {}
space.punctuation.1.2 = { insert, penalty = 10000 }
space.punctuation.1.3 = { insert, spacefactor=.8 .3 .8, data = 1 }
space.punctuation.1.4 = {}
```

`0` is the pattern. The replacements are `1`, `2`, etc. It must be
activated with `transforms` in `\babelprovide`, eg:

```tex
\babelprovide[transforms = space.punctuation, import]{...}
```

A single transform (with a single name) may consist in a collection of
rules (a typical case would be a transliteration scheme). Every rule in
the collection is numbered (the first `.1.` in the example). There can be even
rules in the two sections for transforms (`transforms.prehyphenation`
and `transforms.posthyphenation`); in such a case, restart with `1` in
the second section.

In future releases, several `ini` files will be expanded to take advantage
of this new feature.

## Arbitrary characters in patterns

The brace syntax has been extended to insert any character (for
example, `%`). Just write the hex code with at least 4 ‘hex digits’.
For example, `{d}{0025}` matches a digit followed by a `%`.

Remember you can still enter characters with the old good `^^` syntax,
which is converted at the TeX level; this `{}` extension is handled by
lua directly, so catcodes are not relevant.

## Fixes

* When writing the previous feature, some anomalous behavior when
  inserting items were detected, either with a multi-letter `string` or
  with `insert`. In these cases, `data` was somewhat unpredictable,
  too.
* Hyphen was not shown in Marathi (#123).

 