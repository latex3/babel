# What's new in babel 3.59

2021-05-16

## More experimental Arabic justification

But useable in many cases, although there are still many pending issues
– for example, lists or stretched hboxes doesn't work. Note also the
interface is unfinished and very likely will change.

For practical reasons, currently `bidi=basic` is required.

There are two modes: `elongated` and `kashida`. The latter is the same
as the former, but without real justification alternatives (based on
the OpenType `jalt` table). If you only want elongated glyphs with
the ‘elongated’ mode, just don’t define any kashida rule.

The points were kashida have to be inserted if necessary (with ARABIC
TATWEEL characters) are defined by means of ‘transforms’. In other
words, they are not hard coded and you can define your own rules with
different weights (including rules for words matching some patterns).
The insertion starts at the end of the line. The value sets a
precedence: first attempt kashida with the highest values, then the
following.

A very simple and basic transform for `arabic` and `persian` is
included for ‘plain’ Arabic fonts, which attempts to distribute the
tatwil as evenly as possible. It’s named `kashida.plain` (with
precedence 500) and no ligature is taken into account (except, of
course, for the lam-alif).

So, all you need with this transform is:
```tex
\usepackage[bidi=basic]{babel}

\babelprovide[import, main,
  justification = kashida, % Or 'elongated'
  transforms = kashida.plain
  ]{arabic}

\babelfont{rm}{FreeSerif}
```

The following animated GIF shows a short text with and without inserted
tatwils:

![Kashida](../media/kashida.gif)

An example of how to fine tune these rules is (with Sakkal Majalla,
which inserts at some places a joiner visually incompatible with the
tatwil):
```tex
\babelprehyphenation{arabic}{ () ب () ر }{ kashida = 0 } % 0 = no kashida
```
Of course, these setting must be also font dependent, [**Update:**] which can be accomplished
with the syntax described
[here](https://latex3.github.io/babel/news/whats-new-in-babel-3.85.html#font-dependent-transforms).

As an example of a tranform, the following rule is applied to words
with at least 3 letters. With certain combinations, a (probably long)
kashida is added to the last but one char.
```tex
\babelprehyphenation{arabic}{
  {a}
  () [ي ئ ه ش س ق ف غ ع ض ص ن م ل ك ظ ط خ ح ج ث ت ب ڢ] () 
  [ي ئ ه ق ن ك ث ت ب ا أ إ آ و ؤ ذ د ز ر ة]
  [|،,{.}){]}] }
{ kashida = 500 }
\babelprehyphenation{arabic}{ () ل () [ ا أ إ آ] }{ kashida = 0 }
```

This feature can be deactivated with:
```tex
\babeladjust{ justify.arabic = off }
```
Use `on` to reactivate it.

A explained above, the are still open issues. There will be in addition
further parameters (number of tatwils to be inserted, preference by
position in the line, and so on).

There is some tolerance in the insertion of kashida, set with (syntax
liable to change!):
```tex
\directlua{ Babel.arabic.justify_factor = 0.95 }
```
This is the default. 1 means no tolerance. With lower values, there are
less tatwils and larger spaces.

## New key for transforms

`step = <num>` moves the pointer forward (if positive) or backwards (if
negative). By default it's, of course, `0`, which leaves the pointer
just after the last replacement. It can be set in any non-empty
replacement (eg, `{ string = a, step = -1 }`)

## Fixes

* `\babel@texpdf` inconsistently defined (#130).
* Partial fix for #131 (Quotation with CJK), with the default
  behaviour (no break at all). Tailored behavior for specific locales
  will be added in a next release, but remenber you can always use
  something like:
```tex
\babelcharproperty{`“}{linebreak}{op}
\babelcharproperty{`”}{linebreak}{cl}
```
where `op` and `cl` are the corresponding codes in the Unicode linebreaking
algorithm (open and close).

## Other changes

Removed `doubleletter.hyphen` (Norsk) which serves to nothing. See
issue #128.
