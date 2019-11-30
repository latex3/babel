## Babel 3.36.1841

This package manages culturally-determined typographical (and other)
rules, and hyphenation patterns for a wide range of languages.  Many
language styles work with pdflatex, as well as with xelatex and
lualatex out of the box.  A few even work with plain formats.

The latest stable version is available on <https://ctan.org/pkg/babel>.

Languages are not part of the Babel core any more; in particular, it
shall be no longer necessary to synchronize Babel core releases with
releases of Babel language files. See CONTRIB for further details
about contributing a language. You may also create an ini file or
improve the existing ones -- it's a trivial task (no programming
skills required at all), but don't hesitate to ask for help.

Included is a set of ini files for about 200 languages.

The best way to install and/or update it is with the help of package
managers.

Changes are described in babel.pdf with the label "New <version>". The
manual has been expanded to include some tips and tricks, but it will
be improved in next releases.

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

### Latest changes

```
3.37   Development - 2019-??-??
       - \babelprovide now can be used to add or modify values for the
         keys in ini files.
       - Line break in South East Asian and CKJ are assimilated to
         hyphenation, and it is activated even without 'import' (lua).
       - Tentative and preliminary code for non-standard hyphenarion
         (lua).

3.36   2019-11-14
       - New - \babeladjust, with options: bidi.text, bidi.mirroring,
         bidi.mapdigits, layout.tabular, layout.lists, linebreak.sea,
         linebreak.cjk. There are still some limitations (lua).
       - New - ini for Polytonic Greek, thanks to Claudio Beccari.
       - Fix - Language and script set for Chinese Tradicional and
         Chinese Simplified.

3.35   2019-10-15
       - \markboth and \markright made robust with a recent LaTeX.
       - Shorthands work in bibs and refs even with safe=none.
       - Fix - Another issue related to \ensureascii and LGR (#30)
       - A temporary hack for issue #25.

3.34   2019-09-27
       - Improved compatibility for \babelfont vs \setmainfont.
       - Fix - active ' entered in an infinite loop with lua (#27).
       - Fix - main in \babelprovide was not set until begin document.

3.33   2019-07-19
       - \prehyphenchar set to 0 in languages requiring it: kannada,
         marathi, tamil, etc. (lua).
       - \AddBabelHook can be set for specific languages.
       - Fix - !\grq in T1 behaved like the ligature !` (#19).
       - Minimal preliminary support for the experimental harftex.

3.32   2019-06-03
       - CJK line breaking is now disabled in verbatim (lua).
       - New - \babelcharproperty, to change the direction, mirroring
         glyph and line break properties (lua).
       - Basic support for the picture environment (with pict2e) and pgf
         (lua, somewhat experimental).
       - Start support for harftex (just try - it may work).

3.31   2019-05-04
       - Basic support for line breaking with CJK scripts (lua)
       - layout=tabular now works with the 'array' package (and some
         others; lua).

3.30   2019-04-22
       - Fix - dir in boxes inside math (hopefully now it works; lua).
       - Option mapdigits for \babelprovide, which converts European
         digits to local ones (lua).

3.29    2019-04-03
       - The fix for boxes inside math is incompatible with ams.
         Removed (a better fix is under study).
       - Options bidi-l and bidi-r (for the bidi package; xe).

3.28    2019-04-01
       - Fixes - wrong dir after math, in math inside tabular, in weak L
         inside R inside L, and in boxes inside math.
       - \babelfont now takes into account \defaultfontfeatures. This
         is a potential source of backwards incompatibilities, but
         very likely the risks are very low, and it is, I think, the
         expected behavior.

3.27   2018-11-13
       - Preliminary support for bidi (by Vafa Khalighi) with xetex.
       - Fix for 3.23 - \ensureascii was redefined even when not 
         necessary.
       - Minor improvements in babel-vi.ini.

```

Javier Bezos
