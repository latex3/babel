# What's new in babel 25.11

2025-07-13

This is a minor release, mainly with some internal changes.

## Preparing locale files for the new loader

The changes for the [new language
loader](https://latex3.github.io/babel/news/whats-new-in-babel-25.9.html)
has no effect yet. They introduce a revised loading behavior for
languages with ‘traditional’ (`ldf`) `babel` support. Previously, the
system would first load the `ldf` file and then obtain information from
`babel-<name>.tex` and the `babel-<tag>.ini`. The updated loading
process will invert this order: it will initially attempt to load
`babel-<name>.tex`, which will then select either the `.ldf` file (with
some required additional info from the `ini` file) or the `.ini` data.

When making tests during the preparation of these initial changes, several
findings emerged:

* Some languages (`bulgarian`, `belarusian`, `georgian`, `macedonian`)
  raise an error when `"=` is followed by a non-fully expandable token
  (e.g., `"="`). This token is directly passed to an `\if`, which is
  not a good idea.
* `macedonian` sets the font encoding in a very non-standard way,
  incompatible with Unicode engines. With the latter, a mixture of `ldf`
  and `ini` data will be used.

## Fixes

* `import` in `\PassOptionsToLocale` raised an error with lazy loading.

## Other changes

* Not really a fix, but more an ‘anti-fix’. The tags `de-AT` and
  `de-AT-1996` are now linked to `naustrian`. The real fix would be to
  rename the `babel` style, which doesn’t conform the language naming
  conventions (`austrian` is assigned to `de-AT-1901`, the pre-1996
  orthography).


