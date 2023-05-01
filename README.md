## Babel 3.88.12140

2023-04-18

This package manages culturally-determined typographical (and other)
rules, and hyphenation patterns for a wide range of languages. Many
language styles work with pdflatex, as well as with xelatex and
lualatex out of the box. A few even work with plain formats. Included
is a set of ini files for about 250 languages.

The latest stable version is available on <https://ctan.org/pkg/babel>.

Changes in version 3.88 are described in:

https://latex3.github.io/babel/news/whats-new-in-babel-3.88.html

Apart from the manual, you can find information on some aspects of babel at:

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

   http://www.texnia.com/contact.html

Bugs related to specific languages are best reported to their
respective authors.

### Summary of latest changes
```
3.89  (dev)
      * Deprecating \SetCase, \aliasshorthands, and 'strings' package
        option.
      * The manual has been split in two documents: 'babel.pdf' is the
        user guide and 'babel-code.pdf' is the code.

3.88  2023-04-18
      * 37 new locale files: Abkhazian, Afar, Atsam, Baluchi, Bhojpuri,
        Blin, Corsican, Erzya, Ga, Geez, Guarani, Haryanvi, Inuktitut,
        Jju, Ligurian, Muscogee, Northern Sotho, Nyanja, N’Ko,
        Papiamento, Prussian, Rajasthani, Saho, Sicilian, Silesian,
        South Ndebele, Southern Sotho, Swati, Taroko, Tigre, Tok Pisin,
        Tsonga, Tswana, Tyap, Venda, Volapük, Wolaytta.
      * Fixed a few month names in Greek locales (thanks to Günter Milde).
      * New hook 'begindocument'.
      * Feature preview: option 'casing' in '\babelprovide' (requires a
        future change in the LaTeX kernel).
      * Some minor changes.
```

### Previous changes

See https://latex3.github.io/babel/#whats-new
