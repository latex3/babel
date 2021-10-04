# What's new in babel 3.64

''(Under development.)''

2021-10-??

## New counters in CJK

Some new counters has been added to Japanese.

## Fixes

* babel errors on document option "chinese" (#141)

* In some ini files multiple `babel.name`’s were separated keys with a
  preffix (`A`, `B`), and in some other they were grouped in a single
  key with space separated names. Now only the latter system (a single
  key) is used.
 
*