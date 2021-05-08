# What's new in babel 3.59

(Under development.)

## More experimental Arabic justification

But useable at your own rink, because the interface is unfinished and
very likely will change. Note also there are still many pending issues –
for example, lists just doesn't work.

There are two modes: `elongated` and `kashida`. Actually the latter is the
same as the former, but without real justification alternatives. If you
only want elongated glyphs with ‘elongated’, just don’t define any
kashida rule.

For practical reasons, currently `bidi=basic` is required.

The points were kashida have to be inserted if necessary are defined by
means of ‘transforms’. In other words, they are not hardcoded and you
can define you own rules with different weights (including rules for
words matching some patterns). A very simple and basic transform is
included for ’plain’ Arabic fonts, which attempts to distribute the
tatwil as evenly as possible, starting at the end of the line. Its
named `kashida.plain` and no ligature is taken into account (except, of
course, for the lam-alif).

So:
```tex
\usepackage[bidi=basic]{babel}

\babelprovide[import, main,
  typography/linebreaking = k, % This will change for sure!
  transforms = kashida.plain
  ]{arabic}
  
\babelfont{rm}{FreeSerif}
```

An example of how to fine tune these rules is (with Sakkal Majalla):
```
\babelprehyphenation{arabic}{ () ب () ر }{ kashida = 0 }
```
Of course, these setting must be also font dependent, but for the
moment this is what it is.

As an example, the following rule is applied to words with at least 3
letters. A (probably long) kashida is added to the last but one
char with certain combinations.
```
\babelprehyphenation{arabic}{
  {a}
  () [ي ئ ه ش س ق ف غ ع ض ص ن م ك ظ ط خ ح ج ث ت ب ] () % ل
  [ي ئ ه ق ن ك ث ت ب ا أ إ آ و ؤ ذ د ز ر ة]
  [|،,.){]}] }
{ kashida = 500 }
\babelprehyphenation{arabic}{ () ل () [ ا أ إ آ] }{ kashida = 0 }
```

This feature can be deactivated with:
```tex
\babeladjust{ justify.arabic = off }
```
Use `on` to reactivate it.
