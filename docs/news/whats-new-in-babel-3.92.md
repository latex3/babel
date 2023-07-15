
# What's new in babel 3.92

2023-07-15

Just a couple of fixes.

* The fix for #240 (in version 3.90), related to `\normalsfcodes`, broke
  the `onchar` mechanism in some cases, among other things. A different
  fix has been devised.
  
* Weird behavior when using `\babelfont` with two styles in LuaTeX
  (#178).


