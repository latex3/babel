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
| [3.60](news/whats-new-in-babel-3.60.html) | Mainly a maintenance release.
| [3.59](news/whats-new-in-babel-3.59.html) | Tentative Arabic justification.
| [3.58](news/whats-new-in-babel-3.58.html) | More transforms for Sanskrit, Polish, Czech, Serbian, etc.
| [3.57](news/whats-new-in-babel-3.57.html) | Predefined transforms for Arabic, Greek, Hungarian, etc.
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