# What's new in babel 25.5

**Draft.**

## Transforms

The experimental transform `spacing.basic` in Chinese and Japanese has
been thoroughly revised an can be considered essentially stable. As its
name suggest, its a basic and general purpose set of rules giving a more or
less reasonable result on average with many fonts.

One of the problems is the design can be different in some characters,
particularly the quotation, question and exclamation marks. The new
transform settings has been tested in about 80 CJK fonts. Also the
full-width colon and semicolon may have different visual appearance.
This transforms assumes:

* Full-width question and exclamation marks, no matter its design
  (which can be left-aligned, narrow centered, and wide centered).
  Lines ending with ?, ! can look slightly short in some fonts (for
  example, Noto).

* Full-width quotation marks. Proportional marks can be ‘converted’
to full width with:
```tex
\babelposthyphenation{japanese}{ “ }{
  { insert, norule = .5 0 0},
  {}
}
\babelposthyphenation{japanese}{ ” }{
  { after, norule = .5 0 0},
  {}
}
```
* Centered colon and semicolon. With left-align designs, lines can look
  slightly short. An option is to ‘covert’ them to centered designs
  with:
```tex
\babelposthyphenation{japanese}{ [：；] }{
  { insert, norule = .25 0 0},
  { after,  norule = -.25 0 0},
  {}
}
```

## Directive `@include` 

To reduce many duplicated declarations (and simplify maintenance), an
`@include` directive has been added to the ini mechanism. When
`@include = <name>` is encountered, `babel` reads the file
`babel-<name>.ini`. The <name> must not resemble that of a `ini` locale
file. It has been devised mainly for transforms. See the locale files
for Japanese<del>, Arabic and Devanagari</del> scripts for examples.
