# What's new in babel 25.8

**Draft**

## Hebrew justification

Hebrew justification, unlike many Latin-based scripts that primarily
adjust the spacing between words, frequently utilizes subtle variations in
the spacing between individual letters within words. This can be achieved
by inserting tiny amounts of extra space between letter combinations.

The transform `justification.interletter` activates this kind of
justification, by inserting a `\nobreak` and a zero width glue with a
‘plus’ of .5 times the inter-word space before a letter when preceded
by another letter or a diacritic (remember in Unicode combining chars
are placed after the corresponding letter). Punctuation spacing is
left unchanged.

This interletter adjustment should carefully controlled to avoid
disrupting the natural flow and readability of the Hebrew script. It
depends on several factors, like the font or the text width. There
are three tools:
* \SetTransformValue{interletter.plus}{<value>}, which sets the factor
  for the ‘plus’ glue. By default, `.5`.
* `WordSpace` as a `fontspec` option. This is not a `babel` feature,
  but is mentioned because it can be useful.
* The locale option `justification=unhyphenated`, which is a stronger
  version of `\sloppy`.
  
[[Add example]]



