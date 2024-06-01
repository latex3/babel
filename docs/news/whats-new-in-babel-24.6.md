# What's new in babel 24.6

**Draft.**

## Improved transforms

A more refined control on the horizontal list, including line breaking,
requires not only spaces and penalties, but also kerns and
non-discardable items. In order to deal with rules for scripts like the
CJK family, now transforms can insert `\kern`’s and `\novrule`’s (an
alternative in `luatex` to empty `\hbox`’es). The new keys are `kern`
and `norule`. The first one takes a numerical argument, with the width
in em units, while the second takes three arguments with the width,
height and depth of the empty (invisible) rule to be added, again in
em units.

With the following declaration, the quotation mark is made half-width,
while the period is made half-width only at the end of a line (which
means `。“` takes 1.5 em if in the same line):
```
\babelprehyphenation{chinese}{ 。“ }{
  {},
  { insert, kern= -.5 },
  { insert, penalty = 0 },
  { insert, kern = .5 },
  { insert, norule = -.5 0 0 },
  {}
}
```

In some cases (particularly if the last replacement can be applied to
the last node in the list), you may need to insert a node after the
*next* one. A new key `after`, similar to `insert`, does the job. For
example, with:
```
\babelprehyphenation{english}{ d }{
  { insert, space = .5 0 0, step = 1 },
  { after, space = .5 0 0 },
  {},
}
```
`(\mbox{end})` prints ‘(en d )’. (The `step` is necessary to avoid an
infinite loop.)

In addition, a new key, tentative, incomplete and, admittedly, not
very useful in its current state, is `node`, which inserts an empty
node with the given type and, if provided after a space, subtype (0 by
default). Use names, not values (see the `luatex` manual). An example
with subtype is `node = hlist cell`.

Note these new keys are not added to the string to be transformed (only
spaces, glyphs and discretionaries are).

A bug in `step` (which was sometimes ignored) has been fixed.

 
  