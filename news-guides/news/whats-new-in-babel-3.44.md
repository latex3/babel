# What's new in babel 3.44

2020-05-13

⚠ **Important**. If you update `babel` and you need the Portuguese `ldf` style you must update `babel-portuges`.

⚠ **Important**. You may need to rebuild the formats, too.

## Optional argument for `\foreignlanguage`

By default, neither `\foreignlanguage` nor `otherlanguage*` switch the date or the captions. If for some reason you needed them, you had to write something like `{\selectlanguage{..} ..}`, which is not always the most convenient way. Now, you can write, say:
```tex
\foreignlanguage[date]{polish}{\today}
```
In addition, you can switch captions with `captions`. There are plans to add more options and to extend this mechanism to `\selectlanguage`. 

## Extensions in dates in `ini` files

* The bracketed fields in dates now admit the syntax `[`_period_`|`_counter_`]`, where _period_ is `d` (day), `m` (month), or `y` (year), and _counter_ is a counter name as defined in the `counters` section. For an example, see the [`ini` files for French](https://github.com/latex3/babel/blob/ff1774e221f517ceeb2963778f9d46703c0994d5/locale/fr/babel-fr.ini#L77).
* `\localedate{year}{month}{day}` prints the date for the current locale if loaded with `\babelprovide`.

## Changes in `ini` locale files

### Amharic

According to [Approaches to line breaking](https://www.w3.org/International/articles/typography/linebreak)
when word separators are used, Ethiopic wraps after any character, except with the separators. Modern practice, however, is to separate words with spaces and not to break words (much like Arabic or Hebrew).

Now with `luatex`, Amharic by default follows the modern practice, but the traditional one can be activated just by selecting `hyphenrules=amharic` (in other words, the patterns for Amharic are _not_ set to those named `amharic` in `language.dat`). Internally, the mechanism is the same as that for South East Asian scripts, which means the line breaks can be fine-tuned with `\babelpatterns` and `\babelposthyphenation`.

<p align="center">
<img src="https://github.com/latex3/babel/blob/master/samples/images/babel-wiki-ahmaric.jpg?raw=true" width="400">
</p>

There is a good deal of alphabetic counters for Ethiopic languages in the CSS [Ready-made counter styles](https://www.w3.org/TR/predefined-counter-styles/), and they have been added: afar, agaw, ari, blin, dizi, gedeo, gumuz, hadiyya, harari, kaffa, kebena, kembata, konso, kunama, meen, oromo, saho, sidama, silti, tigre, wolaita, yemsa.

### Other changes

* **French.** Now the first day of the month is 1<sup>er</sup>.
* **Portuguese.** Month names are now lowercase, following the recent orthographic rules.

## Preliminary code for `\babelprehyphenation`

Note it is tentative, but the current behavior for glyphs should be correct. 

It is similar to `\babelposthyphenation`, but (as its name implies) applied before hyphenation. There are other differences: (1) the first argument is the *locale* instead the name of hyphenation patterns; (2) in the search patterns `=` has no special meaning (`|` is still reserved, but currently unused); (3) in the replacement, discretionaries are not accepted, only `remove`, `{}`, and `string = ..`. Also, you *must not* use `^` or `$`.

Currently it handles glyphs, not discretionaries or spaces (in particular, it will not catch the hyphen and you can't insert or remove spaces). Also, you are limited to substitutions as done by lua, although a future implementation may alternatively accept lpeg.

Performance is still somewhat poor.

### Example 1: transliteration

Here is an example of what can be done currently. Consider the following definitions:
```tex
\babelprovide[import=ru]{transrussian}

% Note the order is relevant. First 3-letter groups, then 2-letter ones
% and finally 1-letter ones. Casing is based on the first letter (note
% the trick for ju and ja).
\babelprehyphenation{transrussian}{([Ss])[Cc][Hh]}{
  string = {1|Ss|Щщ},
  remove,
  remove
}
\babelprehyphenation{transrussian}{([ZCSzcs])[Hh]}{
  string = {1|ZCSzcs|ЖЧШжчш},
  remove
}
\babelprehyphenation{transrussian}{j([ua])}{
  remove,
  string = {1|ua|юя}
}
\babelprehyphenation{transrussian}{J([UAua])}{
  remove,
  string = {1|UAua|ЮЯЮЯ}
}
\babelprehyphenation{transrussian}{([Tt])[Ss]}{
  string = {1|Tt|Цц},
  remove
}
\babelprehyphenation{transrussian}
  {([ABVGDEËZIJKLMNOPRSTUFHÈY"abvgdeëzijklmnoprstufhèy'])}{
  string = {1|ABVGDEËZIJKLMNOPRSTUFHÈY"abvgdeëzijklmnoprstufhèy'%
             |АБВГДЕЁЗИЙКЛМНОПРСТУФХЭЫЬабвгдеёзийклмнопрстуфхэыь}
}
```
With this input (just a few proper nouns):
```
Pëtr Il'ich Chajkosvkij Jakust Prokof'ev Tjumen'
Verhnjaja Sinjachiha Nizhnij Novgorod
```
we get the following output:

<p align="center">
<img src="https://github.com/latex3/babel/blob/master/samples/images/trans-russian.jpg?raw=true" width="400">
</p>

### Example 2: combining chars

Currently, `lualatex` doesn't deal with combining chars out of the box. As a result, and depending on the language, chars could not be composed correctly and valid hyphenation points could be discarded. As a workaround, you can use `\babelprehyphenation` in the following way:
```tex
\documentclass{article}

\usepackage[spanish]{babel}

\babelprehyphenation{spanish}{ ([aeiouAEIOU])^^^^0301 }{
  string = {1|aeiouAEIOU|áéíóúÁÉÍÓÚ},
  remove
}

\begin{document}

Au^^^^0301n asi^^^^0301.   % which gets converted to Aún así.

\end{document}
```

## Fixes

* `\babelcharproperty{..}{linebreak]{..}` raised an error (because of a typo in the code).
* With `\babelposthyphenation` an error was raised if the last char in the pattern was `]`
* `\babelposthyphenation` could mess math up. Now it is ignored in math mode.