## Babel 3.47

This package manages culturally-determined typographical (and other)
rules, and hyphenation patterns for a wide range of languages.  Many
language styles work with pdflatex, as well as with xelatex and
lualatex out of the box.  A few even work with plain formats.

The latest stable version is available on <https://ctan.org/pkg/babel>.

Changes in version 3.47 are described in:

https://github.com/latex3/babel/wiki/What's-new-in-babel-3.47

Included is a set of ini files for about 200 languages. 

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
3.47   2020-07-13
       - Fixes:
         - Spurious spaces when autoloading locales (bug introduced
           in 3.46 when fixing #80).
         - In dtx files, autoloading printed some spurious text
           (because % is set to ignore, #87).
       - New - \getlocaleproperty*, which doesn't raise an error.
       - Basic ini+tex templates for about 500 languages in the GitHub
         repository.
         
3.46   2020-07-06
       - Languages can now be optionally selected with their BCP 47
         tags.
       - \BabelEnsureInfo now loads the basic data for the requested
         languages immediately (formerly it was done at the end of the
         preamble).
       - Fixes:
         - Getting rid of the hyphen in XeTeX was not working as
           expected. A new procedure has been devised.
         - tag.bcp47 now contains what its name promises, instead of
           just the language subtag (#70).
         - Locale info was not loaded if the name had uppercase letters
           in some OSs (#80).
         - The [..|..] syntax in ini dates didn't recognize 'digits'.
https://github.com/latex3/babel/wiki/What's-new-in-babel-3.46
         
3.45   2020-06-10
       - Minor fixes in Hindi, Ancient Greek, Macedonian.
       - Improvements in Kurdish, Marathi.
       - Alternative date formats with \localedate[calendar=...,
         variant=...]{y}{m}{d} (note: no calendar computations, just
         strings).
       - \today is (again) case-aware.
       - \localenumeral{digits}{..} and \localecounter{digits}{cntr}
         for native digits.
       - Fixes
         - Improved handling of math with \babelposthyphenation and
           \babelprehyphenation (it was ignoring too much).
         - An error related to \bbl@foreign@x could be raised in some
           rare cases.
See https://github.com/latex3/babel/wiki/What's-new-in-babel-3.45

3.44   2020-05-13
       - WARNING. If you need the Portuguese style you must update
         babel-portuges.
       - \localedate, to print date with the current locale.
       - [|] syntax in dates, to represent a value with any counter
         defined in the ini files.
       - Amharic: line breaking (modern and traditional), counters.
       - Improvements in French, Portuguese.
       - Optional argument in \foreignlanguage and otherlanguage*,
         to switch date and/or captions.
       - Preliminary code for \babelprehyphenation.
       - Fixes:
         - \babelcharproperty{..}{linebreak]{..} raised an error.
         - \babelposthyphenation raised an error if the last char in
           the pattern was ].       
         - \babelposthyphenation is now deativated in math.
https://github.com/latex3/babel/wiki/What's-new-in-babel-3.44
       
3.43   2020-04-28
       - Autoloading based on the BCP47 codes, with basic lookup.
       - Now only a few essential commands are loaded in the format.
       - Improvements in Assamese, Luxembourgish, Marathi, Armenian,
         Bengali, and Finnish.
       - First steps in the removal of switch.def and plain.def.
       - Fixes:
         - Babel reset the \sfcode of » to 1000. It should be 0.
         - \guillemotleft and \guillemotleft renamed to \guillemetleft
           and \guillemetleft (#63).
         - A couple of bugs related to autoloading.
https://github.com/latex3/babel/wiki/What's-new-in-babel-3.43
       
3.42   2020-03-22
       - \getlocaleproperty, to get the value of a field from the loaded
         ini files.
       - Added ini files for Syriac, Coptic and Church Slavic. Improved
         some others (Armenian, Sanskrit).
       - Added a new field tag.bcp47.likely to many files.
       - Improved line breaking with xetex.
       - Fixes:
         - Remove extra space with languages loaded on the fly (bug
           introduced in 3.41).
         - Line breaking was no always correct with languages loaded on
           the fly.
         - Avoid a harmless warning about redefining a protected command
           (#52). 
         - Locale was not switched correctly with COMBINING characters
           (#54).
See https://github.com/latex3/babel/wiki/What's-new-in-babel-3.42
           
3.41   2020-02-27
       - Counters and numerals added in some ini files, based on those
         defined in CSS (Abjad, Alphabetic Hebrew, Japanese, etc.).
       - Fix - A bug in the fix for #47, because \@elt was not reset
         (#51).
       - Fix - Error when french was loaded and an ini file read (#50).
       - Fix - A typo in Greek files: Miriad must read Myriad.
See https://github.com/latex3/babel/wiki/What's-new-in-babel-3.41
       
3.40   2020-02-14
       - New ini files for Latin and Greek (xe/lua).
       - Add 'other' characters used in hyphenation patters (eg,
         apostrophes).
       - Fix - Old Plain TeX and Plain XeTeX raised an error.
       - Fix - Option T1 in fontenc was not recognized to set
         \latinencoding with LaTeX 2020-02-02 (#47)
       - Fix - Locale names were hardcoded in some babel-...tex files.
See https://github.com/latex3/babel/wiki/What's-new-in-babel-3.40

3.39   2020-02-03
       - Languages can now be loaded on the fly (via \babelprovide).
       - With \babelposthyphenation captured chars can now be mapped in
         the replacement (lua).
       - \babelcharproperty can be used to assign specific chars to a
         locale (lua).
       - Fixes:
          - Sichuan Yi: line breaking was not activated (lua).
          - Hyphenation was not always applied with onchar (lua).
          - bidi=basic-l/basic-r where not activated correctly (xe).
          - Thai and turkish raised and error without import in
            \babelprovide.
          - Cleaned up some ini/tex locale files (de, zh, sa).
See https://github.com/latex3/babel/wiki/What's-new-in-babel-3.39

3.38   2020-01-15
       - Automatic switching of ids (\language and \localeid), and fonts
         based on script blocks (lua).
       - New macro - \localeinfo, to access the basic data in the ini
         file loaded by languages.
See https://github.com/latex3/babel/wiki/What's-new-in-babel-3.38

3.37   2019-12-08
       - Preliminary code for non-standard hyphenation, like ff ->
         ff-f (lua).
       - \babelprovide now can be used to add or modify values for the
         keys in ini files.
       - Line breaking in South East Asian and CKJ is assimilated to
         hyphenation, and it is activated even without 'import' (lua).      
See https://github.com/latex3/babel/wiki/What's-new-in-babel-3.37

3.36   2019-11-14
       - New - \babeladjust, with options: bidi.text, bidi.mirroring,
         bidi.mapdigits, layout.tabular, layout.lists, linebreak.sea,
         linebreak.cjk. There are still some limitations (lua).
       - New - ini for Polytonic Greek, thanks to Claudio Beccari.
       - Fix - Language and script set for Chinese Tradicional and
         Chinese Simplified.        
See https://github.com/latex3/babel/wiki/What's-new-in-babel-3.36

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
```

Javier Bezos
