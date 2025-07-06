# What's new in babel 25.11

**Draft**

This is a minor release, mainly with a few internal changes.

## Preparing locale files for the new loader

These changes has no effect yet. They introduce a revised loading
behavior for languages with ‘traditional’ (`ldf`) `babel` support.
Previously, the system would first load the `ldf` file and then obtain
information from the `babel-<name>.tex` and the `babel-<tag>.ini`. The updated loading
process will invert this order: it will initially attempt to load
`babel-<name>.tex`, which will then select either the `.ldf`
file or the `.ini` data.

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

## Changes

* Not really a fix, but more an ‘anti-fix’. The tags `de-AT` and
`de-AT-1996` are now linked to `naustrian`. The real fix would be to
rename the `babel` style, which doesn’t conform the naming scheme
(`austrian` is assigned to `de-AT-1901`, the pre-1996 orthography).


