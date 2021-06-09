# What's new in babel 3.50

2020-10-06

## Fixes

* `main=`is no-op in some cases and silently ignored (a line of code was inadvertently deleted in version 3.49).

* With `layout=footnote`, multiple paragraphs in `\footnote` raised an error (technically, it wasn't `\long`)