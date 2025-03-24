## Babel 25.5.81466

(dev)

`Babel` is the multilingual framework to localize documents. It fully
supports pdfLaTeX and the Unicode engines LuaLaTeX and XeLaTeX. A few
languages even work with Plain formats.

Its aim is to provide a localization framework for different languages,
scripts, and cultures based on the latest advances in Unicode
(including the CLDR, Common Language Repository Data), the W3C (where
applicable) and other technologies, as well as on international
standards.

Babel supports approximately from 170 to 300 languages, depending on
the engine (with various levels of coverage), across about 45 scripts,
including complex and RTL ones. Its high-level interface with
`fontscpec` allows for seamless integration with OpenType technologies
in LuaLaTeX and XeLaTeX, enabling the use of advanced typographic
features.

The latest stable version is available on <https://ctan.org/pkg/babel>.

Changes in version 25.5 are described in:

https://latex3.github.io/babel/news/whats-new-in-babel-25.5.html

Apart from the manual, you can find information and examples in:

https://latex3.github.io/babel/

The best way to install and/or update it is with the help of package
managers.

### Reporting bugs

If you wish to report a problem or bug in any of these packages please
use the
[Issue Tracker for LaTeX2e on GitHub](https://github.com/latex3/babel/issues)
and follow the guidelines that pop up if you press the `New issue`
button.

In particular, to check that you are really seeing a bug, please write
a short, self-contained document that shows the problem. This should
include the `latexbug` package, which will warn if your test file is
not suitable for one or the other reason. See the
[CONTRIBUTING guide](https://github.com/latex3/latex2e/blob/master/CONTRIBUTING.md)
for further details, or if you need to obtain the `latexbug` package.

If the bug turns out to be with third-party software then please
contact the developer, and not us!

You may also report them to the current maintainer more informally on:

   https://latex3.github.io/babel/contact.html

Bugs related to specific languages are best reported to their
respective authors.

### Summary of latest changes
```
25.6   (dev)
       * Improved 'spacing.basic'.
       * @include directive in ini files.

25.5   2025-03-10
       * German: new transform longs.unifraktur, with heuristic rules
         for long s.
       * Dutch: new transform diaeresis.hyphen.
       * Fixes:
         - Some wrong bidi text in \hbox.
         - Extra space with CJK and lazy loading. 
         - LaTeX hook for newly defined font families.
```

### Previous changes

See https://latex3.github.io/babel/#whats-new
