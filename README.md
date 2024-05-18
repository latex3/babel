## Babel 24.5

2024-05-18

`babel` is the multilingual framework for localizing documents in
LaTeX, LuaLaTeX, XeLaTeX. It manages culturally-determined
typographical (and other) rules for about 170 to 300 languages,
depending on the engine, with several levels of coverage. A few
languages even work with Plain formats.

The latest stable version is available on <https://ctan.org/pkg/babel>.

Changes in version 24.5 are described in:

https://latex3.github.io/babel/news/whats-new-in-babel-24.5.html

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

   https://latex3.github.io/babel/contact.html

Bugs related to specific languages are best reported to their
respective authors.

### Summary of latest changes
```
24.5 2024-05-18
     * Change the first item in `abjad` and `maghrebi.abjad` counters
       in `ar-DZ`, `ar-MA` and `ar-TN`), from ا to أ. Suggested by
       @seloumi.
     * Fixed an error when a locale is loaded on the fly and there are empty
       captions in another language (#294)
     * Fix in transforms (lua): negative values in `space` and `spacefactor`
       raised and error.
```

### Previous changes

See https://latex3.github.io/babel/#whats-new
