# What's new in babel 25.17

**Draft**

## Changes in ini locale files

### Kurdish, Kurmanji

Following the more recent versions of the Unicode CLDR,
`northernkurdish` is now named just `kurdish`, with tag `ku`. The `ini`
files for `kmr` has been merged into the former. Strings for the
Islamic and the Persian calendar has been added, too. The locale names
are `kurdish` (in the Latin script) and `kurdish-arabic`. The names
`northernkurdish` and `northernkurdish-arabic` are also recognized.
They use the `ini` mechanism.

As a special case and mainly for compatibility, `kurmanji` is also
recognized, but it will use the `ldf` mechanism.

### Sanskrit

Added the date in the Gregorian calendar (basic locale in Devanagari).

