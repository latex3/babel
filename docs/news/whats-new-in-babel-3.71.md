# What's new in babel 3.71

*(Development.)*

## Fixes

* `provide+=*` didn’t work with `hebrew` as a secondary language.

* (lua) Wrong equation direction in 'cases' and 'array' (#167). The
  latter was a long standing problem, which was even mentioned as a
  known issue in the manual. Fixing it was not trivial, and a quite new
  approach to fix math typesetting in bidi texts, written in lua, has
  been devised. If it does the trick, this mechanism (which is similar
  to that already applied to `picture`, and part of the code is
  actually shared) will be fine tuned and extended in future releases.

* (lua) Bad interraction between `bidi` option and `mathtools`, which
  raised an error (#166). This is also related to the work in progress
  to improve math typesetting.

## IAST transliteration for Devanagari

This feature has been contributed by Maximilian Mehner. See [radardenker/babel-iast](
https://github.com/radardenker/babel-iast).

*(More to follow.)*





