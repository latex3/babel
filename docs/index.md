![Babel](media/babel-top.png)

<p align='center'>
<strong>Localization and internationalization ◾ pdfTeX, LuaTeX and XeTeX</strong>
</p>

This is the home page for Babel, the multilingual environment for
[LaTeX](https://www.latex-project.org/)
(and sometimes Plain) with the three basic engines (pdfTeX, LuaTeX and
XeTeX). Its aim is to provide a localization framework for different
languages, scripts, and cultures based on the latest advances in
[Unicode](https://home.unicode.org/) (including the
[CLDR](http://cldr.unicode.org/)), the
[W3C](https://www.w3.org/groups/wg/i18n-core/publications) (where
applicable) and other technologies.

-----------------------

## Installation

Babel is one of the core components of LaTeX and therefore must be
available on any LaTeX system. However, support for specific languages
may require a separate installation in some cases.

Please, refer to the manual of the distribution you have installed,
which in Windows and MacOS usually involves configuring it with a
graphical user interface, and in Un*x systems with some command, as for
example `sudo apt-get install texlive-lang-arabic` for Arabic in
Ubuntu. (Note some Linux distros install outdated versions. In such a
case, it's advisable to install TeXLive.)

-----------------------

## Featured 

* [Which method for which language](guides/which-method-for-which-language.html)
  When to use the old good language files and when `\babelprovide` or `provide=*`.
* [Non-standard hyphenation with  luatex](guides/non-standard-hyphenation-with-luatex.html)
  Explains how to define special hyphenation rules like `ff` → `ff-f`
* [Using \babelprovide to modify or extend locales](guides/using-babelprovide-to-modify-or-extend-locales.html)
  Hints on how to tailor your language to your needs in some frequent cases.
* [Useful links to tex.strackexchange](guides/useful-links-to-tex.stackexchange.html)
  Examples for many languages: Chinese, Arabic, Sanskrit, etc.

---------------------------

## What's new 

| Version | Most relevant changes
| --- | --- |
| [24.6](news/whats-new-in-babel-24.6.html) | Improved transforms: `kern`, `norule`, `after`. |
| [24.5](news/whats-new-in-babel-24.5.html) | Minor changes and fixes. |
| [24.4](news/whats-new-in-babel-24.4.html) | `interchar=linebreak.basic` for CJK (`xetex`) |
| [24.3](news/whats-new-in-babel-24.3.html) | Also minor changes and fixes (including spaces in French). |
| [24.2](news/whats-new-in-babel-24.2.html) | Minor changes and fixes. |
| [24.1](news/whats-new-in-babel-24.1.html) | **New version numbering**. `interchar` in `\babelprovide`. Spaces in French. |
| [3.99](news/whats-new-in-babel-3.99.html) | About 25 new locale files. |
| [3.98](news/whats-new-in-babel-3.98.html) | `casing` in `ini` files. Improved `persian`/`farsi` |
| [3.97](news/whats-new-in-babel-3.97.html) | `\babelcharclass`, `\babelinterchar` (`xetex`) |
| [3.96](news/whats-new-in-babel-3.96.html) | Improved Odia. Improved `onchar` |
| [3.95](news/whats-new-in-babel-3.95.html) | 16 new locale files (and a few fixes). |
| [3.94](news/whats-new-in-babel-3.94.html) | Chinese dates. New transform for kashida. New locale files. |
| [3.93](news/whats-new-in-babel-3.93.html) | Hebrew numerals. Chinese calendar. 6 new locale files. |
| [3.92](news/whats-new-in-babel-3.92.html) | A couple of fixes.|
| [3.91](news/whats-new-in-babel-3.91.html) | Mainly fixes and transliteration for Hebrew.|
| [3.90](news/whats-new-in-babel-3.90.html) | Casing.|
| [3.89](news/whats-new-in-babel-3.89.html) | Option `modifiers.<lang>`.|
| [3.88](news/whats-new-in-babel-3.88.html) | 37 new locale files. |
| [3.87](news/whats-new-in-babel-3.87.html) | Mainly fixes and minor improvements. |
| [3.86](news/whats-new-in-babel-3.86.html) | `tabular` improved. |
| [3.85](news/whats-new-in-babel-3.85.html) | Font-dependent transforms. |
| [3.84](news/whats-new-in-babel-3.84.html) | Auto-selection of encodings in `pdftex`. |
| [3.83](news/whats-new-in-babel-3.83.html) | Improved Punjabi. `lscape`. |
| [3.82](news/whats-new-in-babel-3.82.html) | Tibetan with XeTeX. Improved `\babelprovide` (with transforms).|
| [3.81](news/whats-new-in-babel-3.81.html) | Tentative Tibetan justification. Option `letters` for `onchar`|
| [3.80](news/whats-new-in-babel-3.80.html) | Captions for Hausa. Ethiopic calendar. |
| [3.79](news/whats-new-in-babel-3.79.html) | Mainly a maintenance release. |
| [3.78](news/whats-new-in-babel-3.78.html) | Some locales updated to the CLDR 41. |
| [3.77](news/whats-new-in-babel-3.77.html) | More on calendars: `\today`, `coptic`. New locale `ar-SA`. |
| [3.76](news/whats-new-in-babel-3.76.html) | Calendar converters. |
| [3.75](news/whats-new-in-babel-3.75.html) | `\BabelEnsureInfo` enabled by default. `\localeinfo*`. |
| [3.74](news/whats-new-in-babel-3.74.html) | Mainly fixes and improvements in math. |
| [3.73](news/whats-new-in-babel-3.73.html) | A fix. |
| [3.72](news/whats-new-in-babel-3.72.html) | Mainly fixes and minor improvements. |
| [3.71](news/whats-new-in-babel-3.71.html) | IAST transliteration for Sanskrit. |
| [3.70](news/whats-new-in-babel-3.70.html) | More (tentative) fixes for (ams)math (lua). |
| [3.69](news/whats-new-in-babel-3.69.html) | Fixes a bug with `amsmath` introduced in 3.68. |
| [3.68](news/whats-new-in-babel-3.68.html) | Fixes (Bengali, `tabular` and `amsmath`). |
| [3.67](news/whats-new-in-babel-3.67.html) | Transforms can be turned on ond off. |
| [3.66](news/whats-new-in-babel-3.66.html) | Transforms for Greek (`transliteration.omega`). |
| [3.65](news/whats-new-in-babel-3.65.html) | Fixes a severe bug with `spanish`. |
| [3.64](news/whats-new-in-babel-3.64.html) | New counters in CJK.  |
| [3.63](news/whats-new-in-babel-3.63.html) | Fixes a severe bug with CJK and XeTeX. |
| [3.62](news/whats-new-in-babel-3.62.html) | Preliminary support for `\AddToHook`. |
| [3.61](news/whats-new-in-babel-3.61.html) | Transform `danda.nobreak`. Improved Arabic justification. |
| [3.60](news/whats-new-in-babel-3.60.html) | Mainly a maintenance release. |
| [3.59](news/whats-new-in-babel-3.59.html) | Tentative Arabic justification. |
| [3.58](news/whats-new-in-babel-3.58.html) | More transforms for Sanskrit, Polish, Czech, Serbian, etc. |
| [3.57](news/whats-new-in-babel-3.57.html) | Predefined transforms for Arabic, Greek, Hungarian, etc. |
| [3.56](news/whats-new-in-babel-3.56.html) | Transforms (in `ini` files) |
| [3.55](news/whats-new-in-babel-3.55.html) | Mainly internal changes. Captions in Uyghur. |
| [3.54](news/whats-new-in-babel-3.54.html) | Improved `picture`. |
| [3.53](news/whats-new-in-babel-3.53.html) | Templates in `\setlocalecaption`. Captions in Sinhala. |
| [3.52](news/whats-new-in-babel-3.52.html) | Improvements in `\babelprehyphenation` and `\babelposthyphenation`. |
| [3.51](news/whats-new-in-babel-3.51.html) | `\setlocalecaption`, to (re)define captions at the document level. |
| [3.50](news/whats-new-in-babel-3.50.html) | A bug fix release for 3.49. |
| [3.49](news/whats-new-in-babel-3.49.html) | `ini` files: enable standard LaTeX syntax as options; French spacing. |
| [3.48](news/whats-new-in-babel-3.48.html) | Preliminary tools for labels (for languages like Japanese and Hungarian). |
| [3.47](news/whats-new-in-babel-3.47.html) | ini+tex templates for about 500 languages.  |
| [3.46](news/whats-new-in-babel-3.46.html) | Option to select languages with BCP 47 tags. |
| [3.45](news/whats-new-in-babel-3.45.html) | Improvements in `\localedate`. |
| [3.44](news/whats-new-in-babel-3.44.html) | Argument in `\foreignlanguage` to switch date and/or captions. Amharic. |
| [3.43](news/whats-new-in-babel-3.43.html) | Autoloading based on BCP 47 codes. |
| [3.42](news/whats-new-in-babel-3.42.html) | `\getlanguageproperty`. Syriac, Coptic, Church Slavic. |
| [3.41](news/whats-new-in-babel-3.41.html) | Counters and numerals (alphabetic and additive). |
| [3.40](news/whats-new-in-babel-3.40.html) | Locale ini files for Latin and Greek. ‘Other’ characters in hyphenation patterns. |
| [3.39](news/whats-new-in-babel-3.39.html) | Locale loading on the fly. |
| [3.38](news/whats-new-in-babel-3.38.html) | Automatic switching of locale and fonts based on script (lua). |
| [3.37](news/whats-new-in-babel-3.37.html) | Non-standard hyphenation, like `f-f` → `ff-f` (lua). |
| [3.36](news/whats-new-in-babel-3.36.html) | Polytonic Greek. Improvements in Chinese. |
| [3.35](news/whats-new-in-babel-3.35.html) | Shorthands work in bibs and refs even with `safe=none`. |

## More

* [Keys in ini files](guides/keys-in-ini-files.html)
* [List of locale templates](guides/list-of-locale-templates.html)
* [Old and deprecated functions](guides/old-and-deprecated-functions.html)
* [Using babel with plain](guides/using-babel-with-plain.html)

## External links

* [Getting Started with Internationalization
  (W3C)](https://www.w3.org/International/i18n-drafts/getting-started/index.html)
* [r12a.io (W3C)](https://r12a.github.io/)