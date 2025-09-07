# What's new in babel 25.6

2025-03-27

## Transforms for CJK

The `input.nospaces` transform provides a convenient way to input text
by removing spaces and line breaks between two CJK characters (but not
between a Latin, Cyrillic, etc., character and a CJK one).

The transform `spacing.basic` for Chinese and Japanese has undergone
thorough revision and is now considered essentially stable. As its name
suggests, it provides a basic, general-purpose set of rules that
deliver on average a reasonably result across various fonts. The new
transform settings have been tested on approximately 80 CJK fonts.

One issue is the design of certain characters, such as quotation marks,
question marks, and exclamation marks, can vary. Additionally, the
full-width colon and semicolon may exhibit different visual
appearances. This transform assumes:

* Left-aligned periods and commas (e.g., 、。).
* Full-width question and exclamation marks. However, these marks may
  vary in design, appearing as left-aligned, narrow centered, or wide
  centered. Lines ending with ? or ! can appear slightly short in
  certain fonts (e.g., Noto). To address this, the `microtype` package
  can be used; for example:
```tex
\usepackage[protrusion=true, expansion=false]{microtype}
\SetProtrusion{ encoding = TU }{？={,100}}
```
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
* Centered colon and semicolon. For left-aligned designs, lines may
  appear slightly short. An option is to ‘convert’ them to centered
  designs with:
```tex
\babelposthyphenation{japanese}{ [：；] }{
  { insert, norule = .25 0 0},
  { after,  norule = -.25 0 0},
  {}
}
```
Sadly, `microtype` is of no help in the latter case, because
the line ends with a kern, not with a glyph (there are hacks, but,
well, they are hacks).

## Directive `@include` 

To reduce many duplicated declarations (and simplify maintenance), an
`@include` directive has been added to the `ini` mechanism. When
`@include = <name>` is encountered, `babel` reads the file
`babel-<name>.ini`. The `<name>` must not resemble that of an  `ini` locale
file. It has been devised mainly for transforms. See the locale files
for Japanese, Arabic and Sanskrit for examples.
