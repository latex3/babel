# What's new in babel 25.1

2025-01-01

Two fixes:

* `\localeid` was assigned twice in some cases with lazy locale
  loading, because of a missing `\global`. This led to some
  locale features not applied correctly.
  
* Direction nodes may ended up between a penalty and a space, which
  meant the latter was not discarded at the beginning of a line.
  
Also, the transforms for basic spacing in Chinese has been added to all
the `zh` locales (it was available only in the main `zh` locale).

