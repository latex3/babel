# What's new in babel 3.97

2023-11-11

# Support for `interchar` (XeTeX)

`babel` now provides built-in tools to set localized rules based on the
XeTeX `interchar` mechanism. Some ideas ideas has been borrowed from the
`interchar` package (by Zou Ho) and the `babel` style for French (by Daniel
Flipo). 

This is the a further step towards a more complete support for XeTeX,
beyond line breaking rules for languages like Thai, which are already
handled by `babel`.

The commands are the following, described in more
detail in the `babel` manual.

```
\babelcharclass{locale}{name}{char-list}

\babelinterchar[options]{locale}{class-first}{class-second}{code}
  
\enablelocaleinterchar{label}
\disablelocaleinterchar{label}
```
‹class-first› and ‹class-second› can be comma separated lists, and all
combinations are defined (so that 2 first classes with 2 second
classes, define 4 combinations).

Not very useful, but illustrative (taken from `interchar`), here is how
to colorize the letters ‘x’ and ‘y’. Here `default` and `boundary` are
classes predefined by `babel` (see the `xetex` manual for further
info):
```tex
\usepackage{color}
\babelcharclass{english}{colored}{xy}
\babelinterchar{english}{default, boundary}{colored}{\bgroup\color{red}}
\babelinterchar{english}{colored}{default, boundary}{\egroup}
```

A more realistic example follows, which inserts a thin space
between a digit and a percent sign. Note the former is entered as a
range and the latter in command form:
```tex
\babelcharclass{english}{digit}{0-9}
\babelcharclass{english}{percent}{\%}
\babelinterchar[label=percent]{english}{digit}{percent}{\,}
```

# Locales

* New locale for Buriat, contributed by [J. Khaganov](https://github.com/ponte-vecchio/).
* Fixed the `alphabetic` counter in Odia.