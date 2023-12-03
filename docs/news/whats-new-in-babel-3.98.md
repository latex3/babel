# What's new in babel 3.98

**Draft.**

# Casing rules in `ini` files

It consists of a space-separated list of character pairs in the order
lower/upper which define a bidirectional mapping. This is the default
but there are 3 modifiers for unidirectional settings: `<u>`, `<l>`,
`<t>`. With `<u>` the uppercase form comes first. 

The first element must be a character. With the default bidirectional
mapping the second one must be also a character, but with `<u>`, `<l>`,
`<t>` the second element can be a macro or a token list between braces.

For example:
```ini
[characters]
casing = uV ťŤ <u> éE ôO ǰ{\v{J}} <t> ǆǅ
```

Alternative casing rules can be defined, too, by providing a name after
a dot. A real example follows, from `la-x-classic` (ie, Classical Latin):
```init
casing = uV
casing.Nouv = uU vV
```
The first one is applied always, because it’s considered a basic
feature of the locale. The second one, which reverts this default
behavior, is activated with something like:
```tex
\babelprovide[import, casing = nouv]{classicallatin}
```
Note the first letter is uppercase in the `ini` file, but lowercase in
`\babelprovide`. See [Keys in `ini`
files](https://latex3.github.io/babel/guides/keys-in-ini-files.html) for an explanation of this
convention.

These alternative rules are available in `\MakeUppercase` and
`\MakeUppercase`, but currently you must resort to the LaTeX low level
interface, with the internal BCP 47 tag, like:
```
\MakeUppercase[locale=la-x-classic-nouv]{uv}
```
Complex rules based on contextual analysis cannot be defined, as LaTeX
provides no interface for them.

# Showing locale properties

The new command `\ShowLocaleProporties` prints to the log file all the
key/value pairs for a locale.

