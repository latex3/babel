# What's new in babel 3.98

2023-12-06

# Casing rules in `ini` files

A new key named `casing` is available in the `characters` section. It
consists of a space-separated list of character pairs in the order
lower/upper which define a bidirectional mapping. By means of 3
modifiers in the list, affecting the subsequent pairs, unidirectional
mappings are also possible: `<u>` (uppercase), `<l>` (lowercase) and
`<t>` (titlecase). With `<l>` the uppercase form comes first.

The first element of each pair must be a character. With the default
bidirectional mapping the second one must be also a character, but with
`<u>`, `<l>`, `<t>` the second element can be a macro or a token list
between braces.

In the following example, a couple of bidirectional mappings are
declared, and then come other unidirectional mappings:
```ini
[characters]
casing = uV ťŤ <u> éE ôO ǰ{\v{J}} <t> ǆǅ
```

Alternative casing rules can be defined, too, by providing a name after
a dot. A real example follows, from `la-x-classic` (ie, Classical Latin):
```ini
[characters]
casing = uV
casing.Nouv = uU vV
```
The first one is applied always, because it’s considered a basic
feature of the locale. The second one, which reverts this default
behavior, is activated with something like:
```tex
\babelprovide[import, casing = nouv]{classicallatin}
```
Note the first letter of the alternative rules is uppercased in the
`ini` file, but lowercased in `\babelprovide`. See [Keys in `ini`
files](https://latex3.github.io/babel/guides/keys-in-ini-files.html)
for an explanation of this convention.

These alternative rules are available in `\MakeUppercase` and
`\MakeUppercase`, but currently you must resort to the LaTeX low level
interface, with the internal BCP 47 tag, like:
```tex
\MakeUppercase[locale=la-x-classic-nouv]{uv}
```
Complex rules based on contextual analysis cannot be defined that way
because LaTeX provides no interface for them.

# Locales

The `ini` file for Persian/Farsi has been much improved by [Farshad
Rasuli](https://github.com/farshadrasuli), with some
mistakes fixed.

The locales for Latin define, using the mechanism describe above, the
following casing variants:
* `nouv`, in `classicallatin` and `medievallatin` reverts the default
  rules, which maps u ↔ V.
* `uv` in `ecclesianticallatin` and the basic `latin` locale applies
  the map u ↔ V (by default it’s u ↔ U and v ↔ V).

# Showing locale properties

The new command `\ShowLocaleProperties{<locale-name>}` prints to the
log file all the key/value pairs for a locale.

# Fixes

`\foreignlanguage` printed the language name in `xetex` with `thai`,
`malayalam`, `sanskrit` and other languages that don’t use hyphens.

