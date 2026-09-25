# What's new in babel 26.13

**Draft**

## Locales

Two locales have been improved: Azerbaijani (thanks to [Anar Abdullayev](https://www.linkedin.com/in/abdanar/))
and Malagasy (thanks to [Ralahady Bruno Bakys](https://github.com/RalahadyBruno)).

The main style for Azerbaijani is now based on the `ini` mechanism and replaces
the `ldf` file. Remember you can still use the latter as the main
language with `provide=!`.

## Fixes

* Make sure glues are not misplaced at end of lines with mixed
  direction (thanks to [Udi Fogiel](https://github.com/Udi-Fogiel)).
* Value in `mapdot=` was ignored.
* Isolate paragraph-like section titles from the rest of the line in the
  bidi algorithm. Requires the `sectioning` option in `layout`.

## Preliminary integration with `unibidi-lua`

This is work in progress, so it should not ne used in production, but
you can make tests. Use the option `bidi=unibidi`.

