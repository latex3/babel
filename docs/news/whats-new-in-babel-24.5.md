# What's new in babel 24.5

2024-05-18

Just a few fixes.

* Change the first item in `abjad` and `maghrebi.abjad` counters for Algeria, Morocco and
  Tunisia (ie, `ar-DZ`, `ar-MA` and `ar-TN`), from ا to أ. Suggested by
  [@seloumi](https://github.com/seloumi). (#297)
* Fixed an error when a locale is loaded on the fly and there are empty
  captions in another language. (#294)
* Fix in transforms: negative values in `space` and `spacefactor` raised and error.
  