## Babel 3.65.2536

This package manages culturally-determined typographical (and other)
rules, and hyphenation patterns for a wide range of languages. Many
language styles work with pdflatex, as well as with xelatex and
lualatex out of the box. A few even work with plain formats. Included
is a set of ini files for about 250 languages.

The latest stable version is available on <https://ctan.org/pkg/babel>.

Changes in version 3.65 are described in:

https://latex3.github.io/babel/news/whats-new-in-babel-3.65.html

Apart from the manual, you can find information on some aspects of babel at:

https://latex3.github.io/babel/

The best way to install and/or update it is with the help of package
managers.

### Reporting Bugs

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

   http://www.texnia.com/contact.html

Bugs related to specific languages are best reported to their
respective authors.

### Summary of Latest changes
```
3.66   2021-??
       * Fixes:
         - tcolorbox in vertical and horizontal mode (#146)
         
3.65   2021-10-19
       * Fixes a severe bug with 'spanish' introduced in 3.64 (#154).
       
3.64   2021-10-13
       * Added a few counters to CJK.
       * Restored the previous behavior of \selectlanguage with
         relation to \write (see #114).
       * Fixes:
         - babel errors on document option 'chinese' (#141).
         - name.babel in ini files set inconsistently (#149).
       * Now babel.def and babel.sty are separate files (for
         Plain-based formats and LaTeX, respectively).
```

### Previous changes

See https://latex3.github.io/babel/#whats-new
