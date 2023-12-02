# What's new in babel 3.98

**Draft.**

# Casing rules in `ini` files

It consists of a list of character pairs in the order lower/upper which
define a bidirectional mapping. There are some 3 modifiers for
unidirectional settings: `<u>`, `<l>`, `<t>`. With `<u>` the uppercase
form comes first. An additional modifier is `<m>` for bidirectional
mapping of macros.

The first element must be a character (except with `<m>`), with the
defult bidirectional mapping the second one must be also a character,
but with `<u>`, `<l>`, `<t>` the second element can be a macro or a
token list between braces.

For example:
```ini
[characters]
casing = uV ťŤ <u> éE ôO ǰ{\v{J}} <t> ǆǅ <m> \ae\AE \oe\OE
```

Complex rules based on contextual analysis cannot be defined, as LaTeX
provides no interface for them. 

# Showing locale properties

The new command `\ShowLocaleProporties` prints to the log file all the
key/value pairs for a locale.

