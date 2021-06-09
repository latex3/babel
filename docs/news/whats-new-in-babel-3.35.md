# What's new in babel 3.35

2019-10-15

## Shorthands work in bibs and refs even with safe=none

Shorthands are based on active characters, and if their definitions are not expandable (and shorthands are not), old TeX raises an error in some contexts (citations and cross references). `Babel` did tricky things to overcome this issue, but they were imperfect and problematic, so `babel` 3.9 added some options to deactivate them, with the side effect shorthands could not be used in these cases. But eTeX provides an easy mechanism to get the proper behavior easily. This is what this version has done.

## Fixes

The rest of changes are just fixes:
* `\markboth` and `\markright` has been made robust in recent LaTeX versions, and `babel` has been adapted to the new definitions.
* Another issue related to `\ensureascii` and LGR (#30).
* A temporary hack for issue #25 (`\unhbox` of Arabic text causes a wrong result).
