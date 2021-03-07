# What's new in babel 3.55

(Under development.)

## Inserting spaces (with `luatex`)

Some languages require readjusting the space before or after somo
characters (a well-known case is French). There is a new key to add a
space, with takes 3 numbers for the natural width, the `plus` and the
`minus` in em units. You may need to set where the quad value is taken
from with `data`:
```tex
\babelprehyphenation{french}{ «{a} }{
  {},
  { insert, penalty = 10000 }, 
  { insert, space=.2 .05 0, data = 1 },
  {}
}
\babelprehyphenation{french}{ «|{a} }{
  {},
  { insert, penalty = 10000 },
  { space=.2 .05 0, data = 1 },
  {}
}
```
Alternatively, the first one can be defined as follows if it comes
before the second declaration (because the pattern of the latter
then matches):
```tex
\babelprehyphenation{french}{ «{a} }{
  {},
  { insert, space=.2 .05 0, data = 1 },
  {}
}
```

As you can see, now multiple insertions are allowed, which is often
necessary when a space is added.

## Fixes

* When writing the previous feature, some anomalous behavior when
  inserting items (either with a multi-letter `string` or with
  `insert`). The fix is not efficient, but at least now it should work.

 