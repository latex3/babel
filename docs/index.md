![Babel](media/babel-top.png)

<p align='center'>
<strong>Localization and internationalization ◾ pdfTeX, LuaTeX and XeTeX</strong>
</p>

This is the home page for Babel, the multilingual environment for
[LaTeX](https://www.latex-project.org/) (and sometimes Plain) with the
three basic engines (pdfTeX, LuaTeX and XeTeX). Its aim is to provide a
localization framework for different languages, scripts, and cultures
based on the **latest advances in
[Unicode](https://home.unicode.org/)** (including the
[CLDR](http://cldr.unicode.org/)), the
[W3C](https://www.w3.org/groups/wg/i18n-core/publications) (where
applicable) and other technologies, as well as on **international
standards** for better compatibility and consistency.

Babel currently supports approximately **300 languages** (with various
levels of coverage) across about **45 scripts, including complex and
RTL** ones like
[Arabic](https://latex3.github.io/babel/guides/locale-arabic.html),
[Chinese](https://latex3.github.io/babel/guides/locale-chinese.html),
[Tibetan](https://latex3.github.io/babel/news/whats-new-in-babel-3.81.html)
and
[Devanagari](https://latex3.github.io/babel/guides/locale-hindi.html).
Its high-level interface with
[`fontspec`](https://ctan.org/pkg/fontspec?lang=en) allows for seamless
integration with **OpenType** technologies in `luatex` and `xetex`,
enabling effortless, robust and flexible use of advanced typographic
features, and fine-grained control and customization. Additionally,
lazy locale and font loading facilitate integration into **automated
document generation workflows**, and makes it adept at handling complex
documents with **multiple languages**.

Many locales in Babel are built on a **modern core** that utilizes
descriptive `ini` files. This design [simplifies the tailoring and
customization](guides/using-babelprovide-to-modify-or-extend-locales.html)
of languages, thanks to tools that provide highly precise control over
[hyphenation and line
breaking](guides/non-standard-hyphenation-with-luatex.html), captions,
date formats (across various calendars), spacing, and other
locale-specific typographical rules.

-----------------------

## Documentation

Find the [PDF manual
here](http://mirrors.ctan.org/macros/latex/required/babel/base/babel.pdf).

This site contains additional information and examples in many languages
(see the menu above). It’s open source – feel free to draft a pull request [here](https://github.com/latex3/babel/tree/docs/docs).

You can also take a look at the videos on
[Youtube](https://www.youtube.com/watch?v=jWGmYZsNiYA&list=PLVc2cHCI6zpJcaa1x-yK9iRjqtE3Ct2Ja&index=4).

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

* [Which method and font for which language](guides/which-method-for-which-language.html)
  When to use the old good language files and when `\babelprovide` or `provide=*`.
* [Migrating from XeTeX to
  LuaTeX](https://latex3.github.io/babel/guides/migrating-xetex-luatex.html).
* [Migrating from pdfTeX to
  LuaTeX](https://latex3.github.io/babel/guides/migrating-pdftex-luatex.html).
* [Tips, tricks and
  more](https://github.com/latex3/babel/discussions/categories/tips-tricks-and-more)
* [Useful links to tex.strackexchange](guides/useful-links-to-tex.stackexchange.html)
  Examples for many languages: Chinese, Arabic, Sanskrit, etc.

---------------------------

## What's new 

| Version | Release date | Most relevant changes
| --- | --- | --- |
| [25.14](news/whats-new-in-babel-25.14.html) | 2025-10-22 | New language loader. |
| [25.13](news/whats-new-in-babel-25.13.html) | 2025-10-01 | Minor fixes. |
| [25.12](news/whats-new-in-babel-25.12.html) | 2025-08-03 | Option `mapdot` |
| [25.11](news/whats-new-in-babel-25.11.html) | 2025-07-13 | Minor changes and fixes. |
| [25.10](news/whats-new-in-babel-25.10.html) | 2025-06-10 | Transform `transliteration.gost779b` (Russian). |
| [25.9](news/whats-new-in-babel-25.9.html) | 2025-05-14 | Option `prepend` in transforms. `\BabelFootnote`always available. |
| [25.8](news/whats-new-in-babel-25.8.html) | 2025-04-29 | Hebrew justification. Main language based on metadata. |
| [25.7](news/whats-new-in-babel-25.7.html) | 2025-04-14 | `\ShowBabelTransforms`. |
| [25.6](news/whats-new-in-babel-25.6.html) | 2025-03-27 | Improved `spacing.basic` (Chinese, Japanese). |
| [25.5](news/whats-new-in-babel-25.5.html) | 2025-03-10 | Transforms for Dutch (diaeresis) and German (long s). |
| [25.4](news/whats-new-in-babel-25.4.html) | 2025-02-14 | 8 new locales for ancient languages. |
| [25.3](news/whats-new-in-babel-25.3.html) | 2025-02-02 | Fixes. 6 new locales. Links in manual. |
| [25.2](news/whats-new-in-babel-25.2.html) | 2025-01-25 | Minor fixes and updates. Old Uyghur, Algerian Arabic. |
| [25.1](news/whats-new-in-babel-25.1.html) | 2025-01-01 | Mainly fixes. |
| [24.15](news/whats-new-in-babel-24.15.html) | 2024-12-21 | Fixes. New locale for Interslavic. |
| [24.14](news/whats-new-in-babel-24.14.html) | 2024-11-30 | Harfbuzz is the default renderer in most scripts. |
| [24.13](news/whats-new-in-babel-24.13.html) | 2024-11-08 | Transform variables for French. Pashto calendars. |
| [24.12](news/whats-new-in-babel-24.12.html) | 2024-10-20 | Manual revised. `\PassOptionsToLocale` |
| [24.11](news/whats-new-in-babel-24.11.html) | 2024-10-05 | Manual revised. Transform variables. |
| [24.10](news/whats-new-in-babel-24.10.html) | 2024-09-18 | `\localename`, `\mainlocalename`, `\babelhyphenmins` |
| [24.9](news/whats-new-in-babel-24.9.html) | 2024-08-29 | Transforms: `digits.native`, CJK spacing (tentative). |
| [24.8](news/whats-new-in-babel-24.8.html) | 2024-08-18 | `\BabelWrapText` and hook `foreign`. |
| [24.7](news/whats-new-in-babel-24.7.html) | 2024-06-26 | Improved a few locales: Filipino, Geez, etc. |
| [24.6](news/whats-new-in-babel-24.6.html) | 2024-06-02 | Improved transforms: `kern`, `norule`, `after`. |
| [24.5](news/whats-new-in-babel-24.5.html) | 2024-05-18 | Minor changes and fixes. |
| [24.4](news/whats-new-in-babel-24.4.html) | 2024-04-20 | `interchar=linebreak.basic` for CJK (`xetex`) |
| [24.3](news/whats-new-in-babel-24.3.html) | 2024-03-29 | Also minor changes and fixes (including spaces in French). |
| [24.2](news/whats-new-in-babel-24.2.html) | 2024-02-07 | Minor changes and fixes. |
| [24.1](news/whats-new-in-babel-24.1.html) | 2024-01-07 | **New version numbering**. `interchar` in `\babelprovide`. Spaces in French. |
| [3.99](news/whats-new-in-babel-3.99.html) | 2023-12-10 | About 25 new locale files. |
| [3.98](news/whats-new-in-babel-3.98.html) | 2023-12-06 | `casing` in `ini` files. Improved `persian`/`farsi` |
| [3.97](news/whats-new-in-babel-3.97.html) | 2023-11-11 | `\babelcharclass`, `\babelinterchar` (`xetex`) |
| [3.96](news/whats-new-in-babel-3.96.html) | 2023-10-25 | Improved Odia. Improved `onchar` |
| [3.95](news/whats-new-in-babel-3.95.html) | 2023-09-29 | 16 new locale files (and a few fixes). |
| [3.94](news/whats-new-in-babel-3.94.html) | 2023-09-12 | Chinese dates. New transform for kashida. New locale files. |
| [3.93](news/whats-new-in-babel-3.93.html) | 2023-08-29 | Hebrew numerals. Chinese calendar. 6 new locale files. |
| [3.92](news/whats-new-in-babel-3.92.html) | 2023-07-15 | A couple of fixes.|
| [3.91](news/whats-new-in-babel-3.91.html) | 2023-07-09 | Mainly fixes and transliteration for Hebrew.|
| [3.90](news/whats-new-in-babel-3.90.html) | 2023-06-26 | Casing.|
| [3.89](news/whats-new-in-babel-3.89.html) | 2023-05-11 | Option `modifiers.<lang>`.|
| [3.88](news/whats-new-in-babel-3.88.html) | 2023-04-18 | 37 new locale files. |
| [3.87](news/whats-new-in-babel-3.87.html) | 2023-03-28 | Mainly fixes and minor improvements. |
| [3.86](news/whats-new-in-babel-3.86.html) | 2023-02-13 | `tabular` improved. |
| [3.85](news/whats-new-in-babel-3.85.html) | 2023-01-23 | Font-dependent transforms. |
| [3.84](news/whats-new-in-babel-3.84.html) | 2022-12-26 | Auto-selection of encodings in `pdftex`. |
| [3.83](news/whats-new-in-babel-3.83.html) | 2022-11-31 | Improved Punjabi. `lscape`. |
| [3.82](news/whats-new-in-babel-3.82.html) | 2022-10-23 | Tibetan with XeTeX. Improved `\babelprovide` (with transforms).|
| [3.81](news/whats-new-in-babel-3.81.html) | 2022-10-04 | Tentative Tibetan justification. Option `letters` for `onchar`|
| [3.80](news/whats-new-in-babel-3.80.html) | 2022-09-17 | Captions for Hausa. Ethiopic calendar. |
| [3.79](news/whats-new-in-babel-3.79.html) | 2022-08-29 | Mainly a maintenance release. |
| [3.78](news/whats-new-in-babel-3.78.html) | 2022-07-20 | Some locales updated to the CLDR 41. |
| [3.77](news/whats-new-in-babel-3.77.html) | 2022-06-26 | More on calendars: `\today`, `coptic`. New locale `ar-SA`. |
| [3.76](news/whats-new-in-babel-3.76.html) | 2022-06-06 | Calendar converters. |
| [3.75](news/whats-new-in-babel-3.75.html) | 2022-05-22 | `\BabelEnsureInfo` enabled by default. `\localeinfo*`. |
| [3.74](news/whats-new-in-babel-3.74.html) | 2022-04-30 | Mainly fixes and improvements in math. |
| [3.73](news/whats-new-in-babel-3.73.html) | 2022-02-26 | A fix. |
| [3.72](news/whats-new-in-babel-3.72.html) | 2022-02-24 | Mainly fixes and minor improvements. |
| [3.71](news/whats-new-in-babel-3.71.html) | 2022-02-13 | IAST transliteration for Sanskrit. |
| [3.70](news/whats-new-in-babel-3.70.html) | 2022-01-26 | More (tentative) fixes for (ams)math (lua). |
| [3.69](news/whats-new-in-babel-3.69.html) | 2021-12-30 | Fixes a bug with `amsmath` introduced in 3.68. |
| [3.68](news/whats-new-in-babel-3.68.html) | 2021-12-28 | Fixes (Bengali, `tabular` and `amsmath`). |
| [3.67](news/whats-new-in-babel-3.67.html) | 2021-11-29 | Transforms can be turned on ond off. |
| [3.66](news/whats-new-in-babel-3.66.html) | 2021-11-08 | Transforms for Greek (`transliteration.omega`). |
| [3.65](news/whats-new-in-babel-3.65.html) | 2021-10-19 | Fixes a severe bug with `spanish`. |
| [3.64](news/whats-new-in-babel-3.64.html) | 2021-10-13 | New counters in CJK.  |
| [3.63](news/whats-new-in-babel-3.63.html) | 2021-07-22 | Fixes a severe bug with CJK and XeTeX. |
| [3.62](news/whats-new-in-babel-3.62.html) | 2021-07-19 | Preliminary support for `\AddToHook`. |
| [3.61](news/whats-new-in-babel-3.61.html) | 2021-06-28 | Transform `danda.nobreak`. Improved Arabic justification. |
| [3.60](news/whats-new-in-babel-3.60.html) | 2021-06-02 | Mainly a maintenance release. |
| [3.59](news/whats-new-in-babel-3.59.html) | 2021-05-16 | Tentative Arabic justification. |
| [3.58](news/whats-new-in-babel-3.58.html) | 2021-04-26 | More transforms for Sanskrit, Polish, Czech, Serbian, etc. |
| [3.57](news/whats-new-in-babel-3.57.html) | 2021-04-07 | Predefined transforms for Arabic, Greek, Hungarian, etc. |
| [3.56](news/whats-new-in-babel-3.56.html) | 2021-03-24 | Transforms (in `ini` files) |
| [3.55](news/whats-new-in-babel-3.55.html) | 2021-03-03 | Mainly internal changes. Captions in Uyghur. |
| [3.54](news/whats-new-in-babel-3.54.html) | 2021-02-22 | Improved `picture`. |
| [3.53](news/whats-new-in-babel-3.53.html) | 2021-01-26 | Templates in `\setlocalecaption`. Captions in Sinhala. |
| [3.52](news/whats-new-in-babel-3.52.html) | 2020-12-16 | Improvements in `\babelprehyphenation` and `\babelposthyphenation`. |
| [3.51](news/whats-new-in-babel-3.51.html) | 2020-10-27 | `\setlocalecaption`, to (re)define captions at the document level. |
| [3.50](news/whats-new-in-babel-3.50.html) | 2020-10-06 | A bug fix release for 3.49. |
| [3.49](news/whats-new-in-babel-3.49.html) | 2020-10-03 | `ini` files: enable standard LaTeX syntax as options; French spacing. |
| [3.48](news/whats-new-in-babel-3.48.html) | 2020-09-01 | Preliminary tools for labels (for languages like Japanese and Hungarian). |
| [3.47](news/whats-new-in-babel-3.47.html) | 2020-07-13 | ini+tex templates for about 500 languages.  |
| [3.46](news/whats-new-in-babel-3.46.html) | 2020-07-06 | Option to select languages with BCP 47 tags. |
| [3.45](news/whats-new-in-babel-3.45.html) | 2020-06-10 | Improvements in `\localedate`. |
| [3.44](news/whats-new-in-babel-3.44.html) | 2020-05-13 | Argument in `\foreignlanguage` to switch date and/or captions. Amharic. |
| [3.43](news/whats-new-in-babel-3.43.html) | 2020-04-28 | Autoloading based on BCP 47 codes. |
| [3.42](news/whats-new-in-babel-3.42.html) | 2020-03-22 | `\getlanguageproperty`. Syriac, Coptic, Church Slavic. |
| [3.41](news/whats-new-in-babel-3.41.html) | 2020-02-28 | Counters and numerals (alphabetic and additive). |
| [3.40](news/whats-new-in-babel-3.40.html) | 2020-02-14 | Locale ini files for Latin and Greek. ‘Other’ characters in hyphenation patterns. |
| [3.39](news/whats-new-in-babel-3.39.html) | 2020-02-03 | Locale loading on the fly. |
| [3.38](news/whats-new-in-babel-3.38.html) | 2020-01-15 | Automatic switching of locale and fonts based on script (lua). |
| [3.37](news/whats-new-in-babel-3.37.html) | 2019-12-08 | Non-standard hyphenation, like `f-f` → `ff-f` (lua). |
| [3.36](news/whats-new-in-babel-3.36.html) | 2019-11-14 | Polytonic Greek. Improvements in Chinese. |
| [3.35](news/whats-new-in-babel-3.35.html) | 2019-10-15 | Shorthands work in bibs and refs even with `safe=none`. |

## External links

* [Getting Started with Internationalization
  (W3C)](https://www.w3.org/International/i18n-drafts/getting-started/index.html)
* [r12a.io (W3C)](https://r12a.github.io/)