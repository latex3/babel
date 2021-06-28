# Czech

Czech is available for `pdftex`, `xetex`, and `luatex`. To write a
document in this language just write in the preamble:
```tex
\usepackage[czech, shorthands="]{babel}
```
In `pdftex` you also need:
```tex
\usepackage[T1]{fontenc}
```

The current version was prepared by Petr Tesařík, and great care has
been taken to ensure backward compatibility with CSLaTeX.

## Troubleshooting

This style makes by default the hyphen active to allow repeating it at
the beginning at the line. This is strongly discouraged, because it can
break labels, negative numbers, and other elements; this explains
the option `shorthands="` above (which means ‘activate only the `"`
shorthand’).

If you are using `pdftex` or `xetex` and need this feature, just omit
this setting. With `luatex` there is a better option: add the following
after loading Babel:
```tex
\babelprovide[transforms = hyphen.repeat]{czech}
```

## Useful Links

* [babel-czech in CTAN](https://ctan.org/pkg/babel-czech)