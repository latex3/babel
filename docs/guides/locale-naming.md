# Locale naming

The `babel` multilingual framework for LaTeX employs specific
conventions for naming and referencing locale files (both the
traditional `ldf` mechanism and the modern `ini` one), prioritizing
**compatibility with established standards**
([Unicode
CLDR](https://www.unicode.org/cldr/charts/47/summary/en.html#f3d4397b739b287), [IANA/BCP 47
registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry))
across the web and international data repositories. `Babel` adheres to
those standards for locale classification, which are based (according
to ISO 639) not only on linguistic similarity, but also on the
existence of a common literature (which sometimes also means an
specific typographical tradition) or of a common ethnolinguistic
identity.

To ensure consistency, clarity, and compatibility across systems, the
following conventions are used for naming locales at the user level.
These conventions apply to both language names and the
corresponding file names.

## Basic rules

**Base language names** are written in lowercase English, with no
  spaces. Diacritics and non-letter characters (ampersands, hyphens,
  apostrophes) are removed to simplify parsing and avoid encoding issues:
  - `northernkurdish` (not “Northern Kurdish”)
  - `kinaraya` (from “Kinaray-a”)
  - `lu` (from “Lü”)
  - `bosniaherzegovina` (from “Bosnia & Herzegovina”)

**Scripts and regions** are appended using hyphens:
  - `serbian-latin` (Serbian written in Latin script)
  - `spanish-mexico` (Spanish as spoken in Mexico)

**Region codes** may be used, for convenience, as a shorthand for long region names:
  - `ba` is accepted as a shorthand for `bosniaherzegovina`

Locale names are primarily derived from the [CLDR (Common Locale Data
Repository)](https://cldr.unicode.org/). When CLDR does not provide a
name (e.g., for historical or constructed languages), the following
patterns, followed in practice for other
names, apply:

- Use the **natural English form**, lowercased and concatenated:
  - `medievallatin` (for “Medieval Latin”)

- Prefer names based on the **description field** in the [IANA Language Subtag Registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry):
  - `polytonicgreek` (for Greek written in polytonic orthography)

- When necessary, **simplify overly descriptive names** to maintain usability and brevity.

- **Variants** in the tags are uppercased in the CLDR, but in the BCP 47
  registry they are lowercases (eg, `el-polyton`). We stick to the BCP
  47 format.

- As secondary references:
  - [Glottolog](https://glottolog.org/).
  - Wikipedia articles can be taken as a complementary but unreliable
  source, and its information must be verified; on the other hand,
  internal data, like [this
  one](https://en.wikipedia.org/wiki/Module:Lang/data), is useful for
  both names and tags.

## Special cases

Some locales in CLDR include **region-specific names** that differ from
the base language, with a more precise name:
- `ro-MD` is labeled “Moldavian” in CLDR.

**Compound names** like “American English” or “Norwegian Nynorsk” may be
  shortened by removing the language when unambiguous:
  - `american` instead of `americanenglish`
  - `nynorsk` instead of `norwegiannynorsk`
  - `brazilian` instead of `brazilianportuguese`
  - `scottish` instead of `scottishgaelic`

When choosing **short demonyms**, prefer ‘plain’ forms (even if
vernacular) over composed or acronym-based names:
  - `british` is preferred over `UKenglish`
  - `american` is preferred over `USenglish`

This reflects the evolution of the `english` style, because the names
`american` and `british` predate `USenglish` and `UKenglish`. Further,
the main names in the CLDR for `en-US` and `en-GB` are `American
English` and `British English`. Note the names `ukenglish` and
`usenglish` (all lowercase) are *not* supported by `babel` as `ldf`
files, even if they work in some operating systems.

## Deprecated Names

The following locale names are deprecated and should be replaced with
their standardized equivalents:

| Deprecated         | Use instead         |
|--------------------|---------------------|
| `brazil`           | `brazilian`         |
| `bahasai`          | `indonesian`        |
| `bahasam`, `meyalu`| `malay`             |
| `classiclatin`     | `classicallatin`    |
| `ecclesiasticlatin`| `ecclesiasticallatin`|
| `frenchb`, `francais`, `canadien` | `french` |
| `germanb`          | `german`, `ngerman` |
| `lsorbian`         | `lowersorbian`      |
| `portuges`         | `portuguese`        |
| `samin`            | `northernsami`      |
| `ukraineb`         | `ukrainian`         |
| `usorbian`         | `uppersorbian`      |
| `vietnam`          | `vietnamese`        |
| `russianb`         | `russian`           |

These names are not included in `name.babel` and should be avoided in
new documents. Some legacy or anomalous names (especially related to
German and Serbian) are under review and may be revised in future
updates.



