# What's new in babel 24.6

**Draft.**

## New keys in transforms

The key `kern` does what its name suggests. Takes a value in em units.

The key `node` insert an empty node with the given type and, if
provided after a space, subtype (0 by default). Use names, not values
(see the luatex manual). Some empty elements have their uses, like
`\hbox{}` and `\vadjust{}`, and this key helps in these cases.

An example is:
```tex
\babelprehyphenation{chinese}{ {a}[“] }{
  {},
  { insert, penalty = 0 },
  { insert, kern = .35 },
  { insert, node = adjust },
  { insert, kern = -.35 },
  {}
}
```

 
  