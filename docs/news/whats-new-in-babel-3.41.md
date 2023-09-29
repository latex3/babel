# What's new in babel 3.41

2020-02-28

## Counters and numerals

Many `ini` locale files has been extended with information about
non-positional numerical systems, based on those  [predefined in
CSS](https://www.w3.org/TR/predefined-counter-styles/). They only work
with `xetex` and `luatex` (but it _may_ work in `pdftex`) and are fully
expandable (even inside an `\edef`). Currently, they are limited to
numbers below 10000. See an example in PDF in the
[repository](https://github.com/latex3/babel/blob/master/samples/numerals.pdf).

There are several way to use them (for the availabe styles in each language, see the list below):

* `\localenumeral{style}{number}`, like `\localenumeral{abjad}{15}`
* `\localecounter{style}{counter}`. like  `\localecounter{lower}{section}` 
* In `\babelprovide`, as an argument to the keys `alph` and `Alph`, which redefine what `\alph` and `\Alph` print:

```tex
\documentclass{article}

\usepackage{babel}

\babelprovide[alph=lower]{russian}
\babelprovide[alph=alphabetic]{thai}

\babelfont{rm}{FreeSerif}

\begin{document}

\begin{enumerate}
  \selectlanguage{russian}

  \item
  \begin{enumerate}
    \item First
    \item Second
  \end{enumerate}

  \selectlanguage{thai}

  \item
  \begin{enumerate}
    \item First
    \item Second
  \end{enumerate}
\end{enumerate}

\end{document}
```

You can find another example [here](https://tex.stackexchange.com/questions/529813/how-to-define-counters-with-arbitrary-alphabet/530491#530491).

### List of styles

[**Update.** This list has been extended. See the manual.]

* Ancient Greek
  * lower.ancient
  * upper.ancient

* Arabic
  * abjad 
  * maghrebi.abjad 

* Belarusan, Bulgarian, Macedonian, Serbian
  * lower 
  * upper 

* Hebrew
  * letters

* Hindi
  * alphabetic

* Armenian
  * lower
  * upper

* Japanese
  * hiragana 
  * hiragana.iroha 
  * katakana 
  * katakana.iroha 
  * circled.katakana  
  * informal 
  * formal 
  * cjk-earthly-branch
  * cjk-heavenly-stem 
  * fullwidth.lower.alpha
  * fullwidth.upper.alpha

* Georgian
  * letters

* Greek

  * lower.modern
  * upper.modern
  * lower.ancient
  * upper.ancient

* Khmer
  * consonant

* Korean
  * consonant  
  * syllabe 
  * hanja.informal
  * hanja.formal
  * hangul.formal
  * cjk-earthly-branch
  * cjk-heavenly-stem 
  * fullwidth.lower.alpha
  * fullwidth.upper.alpha

* Persian 
  * abjad
  * alphabetic 

* Russian
  * lower
  * lower.full 
  * upper
  * upper.full 

* Tamil
  * ancient

* Thai
  * alphabetic

* Ukrainian
  * lower  
  * lower.full
  * upper  
  * upper.full

* Chinese
  * cjk-earthly-branch
  * cjk-heavenly-stem 
  * fullwidth.lower.alpha
  * fullwidth.upper.alpha

## Fixes

* A bug in the fix for #47 (`T1` not recognized after a change in the   LaTeX kernel), because `\@elt` was not reset (#51).
* Error when `french` was loaded and an ini file read, because the semicolon (;) was not   reset to ‘other’ (#50).
* A typo in Greek files: Miriad must read Myriad (so, the name of the corresponding macro has changed and now is `\BabelGreekNumeralMyriads`)