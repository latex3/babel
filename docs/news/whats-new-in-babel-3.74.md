# What's new in babel 3.73

*Development.*

## Fixes in math

`luatex` 1.15 fixes a bug in the vertical spacing when a display math is
preceded by a short line in RTL mode. This allowed to eventually get
the proper spacing, although there are some issues when the display
isn't numbered (there is an easy workaround). 

The vertical spacing with `amsmath` has been improved, too, but there
are, again, some pending issues (bad spacing when the display starts a
paragraph). 

## More fixes

Minor bugs in Khmer, Turkmen and Marathi has been fixed.

