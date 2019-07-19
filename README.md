## Babel 3.33

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
3.33   2019-07-19
       - \prehyphenchar set to 0 in languages requiring it: kannada,
         marathi, tamil, etc. (lua).
       - \AddBabelHook can be set for specific languages.
       - Fix - !\grq in T1 behaved like the ligature !`.
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

3.26   2018-10-16
       - Fix for 3.25 - \babelprovide raised an error with xetex. 

3.25   2018-10-03
       - Fixes for 3.23 - mapfont=direction could raise an error.
       - Language and Script were not always defined correctly.
       - Improved tentative support for Thai, Lao and Khmer in both 
         luatex and xetex.

3.24   2018-09-26
       - Prelimimary support for Thai interword spacing with luatex.

3.23   2018-09-02
       - After extensive tests and fixing some issues, bidi=basic is 
         not experimental any longer.
       - import in \babelprovide does not require a language code if
         the language name is a recognized one.
       - New macro: \ifbabelshorthand.
       - TS1, T3 and TS3 have been added to the non-ascii list, to 
         avoid problems in case no ASCII-savvy encoding is requested.
       - Define Language and Script if fontspec does not known them (eg, 
         the Japanese script).
       - Set the \thepage bidi bahavior in foots/heads.
       - Fix - Undefined \bbl@stripslash in Plain.

3.22   2018-06-05
       - Fix - Error with \chapter if empty in ini
       - Prelimimary support for Sanskrit
       - Unknown languages in aux files do not raise an error
         any more (only show a warning).

3.21   2018-05-10
       - Fix - equation numbers raised an error.
       - Two minor changes: if no language is requested load nil 
         instead of raising an error, and the message 'babel <x.x>...'
         is not printed to the log any more.

3.20   2018-05-02
       - ini files with the field digits.native define
         \<language>digits and \<language>counters. \arabic can be
         redefined to use native digits.
       - Fix - mapfont in bidi=basic didn't take into account combining
         marks (eg, Arabic vowels).
       - Fix - A bug introduced in 3.19, which sometimes reversed text 
         in \hbox'es.
       - Fix for luatex 1.07 - An internal change in luatex broke
         bidi at 'automatic' hyphens.
       - Fix for latest latex - babel.ins raised an error.

```

Javier Bezos
