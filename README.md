## Babel 3.54

This package manages culturally-determined typographical (and other)
rules, and hyphenation patterns for a wide range of languages.  Many
language styles work with pdflatex, as well as with xelatex and
lualatex out of the box.  A few even work with plain formats.

The latest stable version is available on <https://ctan.org/pkg/babel>.

Changes in version 3.54 are described in:

https://github.com/latex3/babel/wiki/What's-new-in-babel-3.54

Included is a set of ini files for about 250 languages. 

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

### Latest changes
```
3.54   2021-02-22
       * RTL text inside \put (with pict2e) correctly rendered in
         typical cases (lua, #98).
       * Same for \tikz (lua).
       * The main change in internal (loader of ini files refactored).
       * Fixes:
         - The tentative \foreignlanguage* stopped working.
       
3.53   2021-01-26
       * Extended \setlocalecaption to allow .template (related to
         #111).
       * Allow access to some features in `ini` files even with `ldf`
         ones.
       * Tool to create ldf files with a (more or less) GUI.
       * Captions for Sinhala (thanks to Nisal D Bandara).
       * Fixes:
         - Not really a fix, but I started working on `picture` with
           bidi in lua.
         - Parenthesis sometimes mirrored at the end of math with
           bidi=basic.
See https://github.com/latex3/babel/wiki/What's-new-in-babel-3.53

3.52   2020-12-16
       * WARNING. If you need the style for Afrikaans you must update
         babel-dutch.
       * Improved \babelposthyphenation and \babelprehyphenation:
         - Ordinary spaces can be matched in the latter.
         - Keys 'insert' and 'penalty'.
         - Some bugs fixed.
       * Fixes:
         - A couple of issues with \localeinfo and \getlocaleproperty
           (#102, #105).
         - Save size overflow with many \selectlanguage's (#109).
         - Albanian: fix a typo in contents name (#104)
         - Missing ‘Unused global option(s)’ warning (#110)
See https://github.com/latex3/babel/wiki/What's-new-in-babel-3.52

3.51   2020-10-27
       * Common interface to (re)define captions (with
         \setlocalecaption).
       * frenchspacing filled in many ini files.
       * A new internal macro (for ldf files) named \babel@texpdf, to
         ease interoperativity with hyperref in shorthands.
       * Fixes:
         - Error when loading a language on the fly in tabular (#97).
         - 'hyphenrules' raised an error with 'base' option (#59).
         - Better handling of autoloaded languages (eg, catcodes).
         - An error was raised with CJK and a null font (#99).
         - language.tag.bcp47 and tag.ini in \localeinfo didn't work
           (#102).
See https://github.com/latex3/babel/wiki/What's-new-in-babel-3.52

3.50   2020-10-06
       * Fixes:
         - main=<language> stopped working in some cases (#96).
         - Footnotes were not \long with layout=footnotes.
See https://github.com/latex3/babel/wiki/What's-new-in-babel-3.50

3.49   2020-10-03
       * BUG. This version has a severe bug with main= (fixed in 3.50).
       * Allow standard LaTeX syntax to recognize locales based on ini
         files in the most common cases.
       * frenchspacing is set with ini files.
       * Fixes:
         - layout.lists=off didn't work (#94)
See https://github.com/latex3/babel/wiki/What's-new-in-babel-3.49

3.48   2020-09-01
       * New (tentative) tools to customize some labels (like chapters
         in CJK and Hungarian). 
       * Warning instead of error if neither 0 nor ZERO WIDTH SPACE is
         found in some Southeast Asian languages.
       * Fixes:
         - \babelshorthand didn't work with some dialects (#91).
         - \selectlanguage and otherlanguage raised an error inside
           tabular.
See https://github.com/latex3/babel/wiki/What's-new-in-babel-3.48       

3.47   2020-07-13
       * Fixes:
         - Spurious spaces when autoloading locales (bug introduced
           in 3.46 when fixing #80).
         - In dtx files, autoloading printed some spurious text
           (because % is set to ignore, #87).
       * New - \getlocaleproperty*, which doesn't raise an error.
       * Basic ini+tex templates for about 500 languages in the GitHub
         repository.
See https://github.com/latex3/babel/wiki/What's-new-in-babel-3.47

3.46   2020-07-06
       * Languages can now be optionally selected with their BCP 47
         tags.
       * \BabelEnsureInfo now loads the basic data for the requested
         languages immediately (formerly it was done at the end of the
         preamble).
       * Fixes:
         - Getting rid of the hyphen in XeTeX was not working as
           expected. A new procedure has been devised.
         - tag.bcp47 now contains what its name promises, instead of
           just the language subtag (#70).
         - Locale info was not loaded if the name had uppercase letters
           in some OSs (#80).
         - The [..|..] syntax in ini dates didn't recognize 'digits'.
See https://github.com/latex3/babel/wiki/What's-new-in-babel-3.46

3.45   2020-06-10
See https://github.com/latex3/babel/wiki/What's-new-in-babel-3.45

3.44   2020-05-13
See https://github.com/latex3/babel/wiki/What's-new-in-babel-3.44

3.43   2020-04-28
See https://github.com/latex3/babel/wiki/What's-new-in-babel-3.43

3.42   2020-03-22
See https://github.com/latex3/babel/wiki/What's-new-in-babel-3.42

3.41   2020-02-27
See https://github.com/latex3/babel/wiki/What's-new-in-babel-3.41

3.40   2020-02-14
See https://github.com/latex3/babel/wiki/What's-new-in-babel-3.40

3.39   2020-02-03
See https://github.com/latex3/babel/wiki/What's-new-in-babel-3.39

3.38   2020-01-15
See https://github.com/latex3/babel/wiki/What's-new-in-babel-3.38
```

Javier Bezos
