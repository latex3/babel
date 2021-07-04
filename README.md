## Babel 3.61.2423

This package manages culturally-determined typographical (and other)
rules, and hyphenation patterns for a wide range of languages. Many
language styles work with pdflatex, as well as with xelatex and
lualatex out of the box. A few even work with plain formats. Included
is a set of ini files for about 250 languages.

The latest stable version is available on <https://ctan.org/pkg/babel>.

Changes in version 3.61 are described in:

https://latex3.github.io/babel/news/whats-new-in-babel-3.61.html

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
3.62   2021-??-??
       * No errors with unknown languages in aux file.
       * Fixes:
         - Locale dependent quotes with CJK (#131).
       
3.61   2021-06-28
       * Improved justification=kashida/elongated: hboxes (lua).
       * Transform danda.nobreak for several Indic scripts (lua):
         Assamese, Bengali, Gujarati, Hindi, Kannada, Malayalam,
         Marathi, Oriya, Tamil, Telugu.
       * Improved \babelprovide when used to reconfigure a language.
       * Fixes:
         - Partial fix for #114 (bad breaks and spacing with
           \selectlanguage).
         - \shorthandoff*{^} caused error for \section command (#129).
```

### Previous changes

See https://latex3.github.io/babel/
