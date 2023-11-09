# What's new in babel 3.97

**Draft**

# Support for `interchar` (XeTeX)

`babel` now provides built-in tools to set localized rules based on the
XeTeX `interchar` mechanism. Some ideas ideas has been borrowed from the
`interchar` package by ... and the `babel` style for French (by Daniel
Flipo). 

This is the a further step towards a more complete support for XeTeX,
beyond line breaking rules for languages like Thai, which are already
handled by `babel`.

```
\babelcharclass{locale}{name}{char-list}

\babelinterchar[options]{locale}{class-first}{class-second}{code}
  
\enablelocaleinterchar{label}
\disablelocaleinterchar{label}
```
<class-first> and <class-second> can be comma separated lists, and all
combinations are defined (so that 2 first classes with 2 second
classes, defines 4 combinations).

Not very useful, but illustrative (taken from `interchar`), here is how
to colorize the letters ‘e’ and ‘s’:
```tex
\usepackage{color}
\babelcharclass{english}{colored}{es}
\babelinterchar{english}{default, boundary}{colored}{\bgroup\color{red}}
\babelinterchar{english}{colored}{default, boundary}{\egroup}
```

A more realistic example follows, which inserts a thin space
between a digit and a percent sign. Note the former is entered as a
range and the latter in command form:
```tex
\babelcharclass{english}{digit}{0-9}
\babelcharclass{english}{percent}{\%}
\babelinterchar{english}{digit}{percent}{\,}
```

# Locales

* New locale for Buriat, contributed by [J. Khaganov](https://github.com/ponte-vecchio/).
* Fixed the `alphabetic` counter in Odia.