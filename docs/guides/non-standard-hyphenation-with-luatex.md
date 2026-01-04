# Transforms and non-standard hyphenation with `luatex`

Hyphenation in LaTeX is accomplished by means of the so-called
discretionaries. You can find a brief description
[here](http://latexref.xyz/Line-breaking.html).

This article describes an extension which can serve to several
purposes, particularly dealing with non-standard hyphenation rules,
including changes in letters and weighted hyphenation points.
(Note `luatex` currently provides built-in ways the deal with some
frequent cases, too. Please, refer to its manual for further
information.)

The basic syntax is explained in the `babel` manual. This article
complements it with an explanation of the second and third arguments of
`\babelposthyphenation`, which also applies to `\babelprehyphenation`
with the differences explained in the manual.

Here is a simple example of a declaration, which tells LaTeX to change
the group ‘ck’ to ‘kk’ with an optional hyphenation point inside this
group (it’s not meant as a full or realistic rule for German, but just a
starting point; a more detailed rule is shown below).
```tex
\babelposthyphenation{german}{ck}{
  { no = c, pre = k- },
  {}
}
```
It consists of:
* the **language** the transformation is applied to (here `german`);
* a **pattern** with the string to be handled (here `ck`), which is based
  on lua patterns (please refer to the lua site linked below), with
  some extensions;
* a **replacement** with a list containing exactly the same number of
  elements as the pattern (except if there are inserted elements, as
  explained below).

The language here refers to a set of hyphenation rules, ie, to
`\language`. So, the first letter in the pattern is replaced with the
first item in the list, the second letter with the second item and so
on. (This is not strictly true, because the replace list is filled with
`nil`’s if shorter. The `nil` value is equivalent to `remove`, explained
below.)

With `\babelposthyphenation`, the string `beginning (middle) end.` is
segmented at spaces, and patterns are matched against the following
three strings: `be|gin|ning`, `(mid|dle)` and `end.`. Note they may
contain punctuation marks, and that discretionaries are marked with
`|`.

## Replacement list

The items in the replacement list are the following:

1. An empty group `{}` leaves the corresponding item **untouched**. For
example, in the rule above the ‘k’ in the pattern (the second element)
provides the context, because in the replacement list the second item is
`{}` and therefore the character is just kept.
2. A list like `{ no = c, pre = k-, post = }` replaces the letter by
the corresponding **discretionary**. Only one of the keys is necessary,
and the rest defaults to empty. By default the penalty is
`\hyphenpenalty` or `\exhyphenpenalty` (_TeXbook_, p96), but a
different value can be set with the key `penalty`. A further field is
`data` - automatic hyphens contain no information about the font and
the like, and with this key you can set which element in the list (as
captured) they will the taken from. In the rule above the ‘c’ is
replaced by a discretionary, but no `data` is required because the
item to be replaced is a character, which already contains the required
data. (Remember discretionaries are not allowed in
`\babelprehyphenation`.)
3. The key `string` replaces the character with the **string**. If empty,
the item (in TeX jargon, the node) is removed; to insert chars, just
use a multi-character string. The nodes created are literal copies of
the original (the same font, language, and so on), but with the new
characters.
4. With `remove` the node is, well, **removed**. A synonymous is
`string=`. Trailing `remove`’s in the replacement list can be omitted.
5. **Spaces** are declared with something like `space =.2 .1 0`. The
values are in em units, and they are the natural width, the `plus`, and
the `minus`. Here, you may need `data`, too. With `spacefactor` the
unit is the ordinary space of the current font (with the latter, you
may need a `data=` pointing to a specific glyph).
6. **Penalties** are declared with `penalty`.
7. **Kerns** With a numeral argument in em units (e.g., `kern= -.5`).
8. **No rules** The equivalent of `\nohrule` and `\novrule`, which takes three
arguments with the width, height and depth of the empty (invisible)
rule to be added, again in em units. See [What's new in babel
24.6](https://latex3.github.io/babel/news/whats-new-in-babel-24.6.html).

Some keys can be used in conjunction with `insert`, which must be the
very first one in the replacement. With it the item is not replaced,
but inserted. The following rule inserts a penalty in the middle of the
group ‘ff’:
```tex
\babelposthyphenation{english}{ ff }
  { {},
    { insert, penalty = 10 },
    {}
  }
```
In some cases (particularly if the last replacement can be applied to
the last node in the list), you may need to insert a node after the
*next* one. A new key `after`, similar to `insert`, does the job.

In the replacement list, there is an extended syntax which allows to
**map the captured characters** (see below). For example, `{2|ΐΰῒῢ|ίύὶὺ}`
means: if the second captured char is ΐ replace it with ί, ύ with ύ,
and so on. This feature is particularly useful when a letter changes if
there is a hyphen, and also when transliterating. Here is a partial
example of the latter (the full example is
[here](https://latex3.github.io/babel/news/whats-new-in-babel-3.44.html),
with digraphs and trigraphs):
```tex
\babelprehyphenation{transrussian}
  {([ABVGDEËZIJKLMNOPRSTUFHÈY"abvgdeëzijklmnoprstufhèy'])}{
  string = {1|ABVGDEËZIJKLMNOPRSTUFHÈY"abvgdeëzijklmnoprstufhèy'%
             |АБВГДЕЁЗИЙКЛМНОПРСТУФХЭЫЬабвгдеёзийклмнопрстуфхэыь}
}
```
`babel` traverses the strings to be processed with the help of a
pointer. Another key available in the replacements is `step = <num>`,
which moves this pointer forward (if positive) or backwards (if
negative). By default it’s, of course, `0`, which leaves the pointer
just after the last replacement. It can be set in any non-empty
replacement (eg, `{ string = a, step = -1 }`). With `step` recursive
rules are possible, at least in simple cases (but you have to be
careful to avoid infinite loops):
```tex
\babelprehyphenation{russian}{ (['ъЬ])' }{
  { string = {1|'ъЬ|ъЬЪ}, step = -1 }}
```
with the following outputs: `''` → `ъ`, `'''` → `Ь`, `''''` → `Ъ`.

A further key is `kashida`, for Arabic justification. See [What's new in
babel 3.59](whats-new-in-babel-3.59.md). 

## Patterns

‘Regular’ hyphenation points, as inserted automatically by the
hyphenation algorithm, are entered in the pattern as vertical bars
(`|`), as the short examples below show. Explicit hyphens are entered
as `=`. Spaces are allowed for clarity, and they are discarded. If you
are not sure where the hyphenation points fall, use `\showhyphens`.
(Also, remember `|` in `\babelprehyphenation` is a space.)

The pattern is matched with lua empty captures, which are automatically
added before and after the string. You may set explicitly different
empty captures, to reduce the number of items in the replacement list:
```tex
\babelprehyphenation{english}{very()long()pattern}{
  string = L,
  string = OOO,
  string = N,
  string = G
}
```
With this rule, the string ‘verylongpattern’ is replaced with
‘veryLOOONGpattern’. The combination `... () ... () ...` behaves much
like a regex with a **lookbehind** (before the first `()`; ‘backtrack’ in
OpenType) and a **lookahead** (after the second `()`). You should provide
both or none; if provided, they can be empty.

Lua patterns with dots, characters classes (with `%`, but see below for
an alternative TeX-friendly syntax) and char-sets (with `[]`, including
complementing and ranges) are allowed, too. When using the dot, be
aware it matches `|` and `=`, too. `+`, `-`, `?` and `*` are allowed
outside the `()`...`()` block, but not inside. So, `{a}|?()Á()` is a
letter followed optionally by a discretionary, but only Á is actually
transformed (in these cases, you may want to go back with the key
`step`).

*Note.* Only the set provided by Lua 5.0, is supported, which excludes
`%f`. Also, `%a` is restricted to chars below U+FFFF (you can still
use directly chars above U+FFFF, even with char-sets).

**Captures** with `()` are allowed, too. Ordinary captures are allowed
_inside_ the empty captures (they must resolve to exactly one
character). In the pattern, **the syntax `{n}`** is a backreference
matching the _n_-th capture inside the empty captures. This syntax can
be used in the replacement strings, with the corresponding capture:
```tex
\babelposthyphenation{german}
  { [AEIOUÄÖÜaeiouäöü] ([cC]) ([kK]) [AEIOUÄÖÜaeiouäöü] }{
    {},                        % Keep first vowel
    { no = {1}, pre = {2}- },  % c or C → discretionary
    {},                        % Keep k or K             
    {}                         % Keep second vowel
}
```
There are two captures, namely, `[cC]` (which means either ‘c’ or
‘C’) and `[kK]`, used in the second replacement as `{1}` and `{2}`.
With this rule, `\showhyphens{Trockenerzeugnis Druckeinstellung}` will
display something like:
```
Underfull \hbox (badness 10000) in paragraph at lines 15--15
[] \TU/lmr/m/n/10 Trok-ken-erzeug-nis  Druck-ein-stel-lung
```
Note `\showhyphens` actually hyphenates the first word, and therefore
the rule is applied. On the other hand, discretionaries are taken into
account, which means the rule isn’t applied to *Druckeinstellung*
because the second vowel doesn’t immediately follow the ‘k’ (there is
a soft hyphen in between). Very often what we need is a combination of
hyphenation patterns with post-hyphenation rules. (Remember also
`german` isn’t current German, but the `1901` variant.)

Another example is:
```
\babelposthyphenation{german}{([fmtrp]) | {1}}{
  { no = {1}, pre = {1}{1}- }, 
  remove,
  {}
}
```
No attempt has been done here to follow the full German rules. For a
more realistic example of double consonants, in Norwegian, see [the
guide for this
language](https://latex3.github.io/babel/guides/locale-norwegian.html#hyphenation).

Since the percent sign has a quite different meaning in lua and tex, as
a convenience the `{}` syntax can be used to enter **character classes**
in the pattern, too (ie, `{d}` becomes `%d`, but note `{1}` is not
internally the same as `%1`).

Another extension with `{}` is the possibility to enter a character by
its ***hex code*** (at least 4 digits). So, `{007C}` and `{003D}` are the
characters ‘|’ and ‘=’, in case you need their literal meaning.

## Short examples

* In Spanish, if there are one or two vowels between two hyphenation
  points, the first one takes precedence (in other words, the second
  one is penalised):
```tex
\babelposthyphenation{spanish}{[aeiouáéíóú]|[aeiouáéíóú][aeiouáéíóú]|}{
  {}, {}, {}, {},
  { pre=-, penalty=1000, data=4 },
}
```
* In Greek, a diaeresis disappears if the vowel group is broken (see
  Németh, _TUGboat_ 87):
```tex
\babelposthyphenation{greek}{α|ΐο}{
  {},
  remove,
  { no= ΐ , pre= - , post= ί },
  {}
}
```
In cases like this, you may want to use maps as described above.

* In Dutch, _omaatje_ becomes _oma- tje_:
```tex
\babelposthyphenation{dutch}{aa|tje}{
  {},
  { no = a , pre= - },
  remove,
  {}, {}, {}
}
```
* To duplicate explicit hyphens:
```tex
\babelposthyphenation{polish}{ {a}={a} }{
  {},
  { no = -, pre = -, post = -, data = 1 },
  {}
}
```

* To prevent a line break if there is a single letter followed by a
  hyphen and a word (eg, “e-mail”):
```tex
\babelposthyphenation{english}{ ^{A}*(){a}=() }{
  {},
  { pre=-, no=-, penalty=10000 }
}
```
With `{A}*` we consider the possibility of leading characters like `(`
or `“`, because `{A}` is the same as `%A` in lua. This part is placed
before that to be processed, which is enclosed between `() ()`.

* Here is an example showing how to group two similar rules. The
  pattern means ‘either < or > repeated’. Then, the first replacement
  selects the character based on the captured one. The result is `<<`
  and `>>` get replaced by `“` and `”`, respectively:
```tex
\babelprehyphenation{english}{ ([<>]){1} }{
  string = {1|<>|“”},
  remove   % ← Redundant. Can be omitted.
}
```

* If you want to insert a space between a letter or digit and ‘!’, ‘?’,
  ‘:’ or ‘;’:
```tex
\babelprehyphenation{english}{ [A-Za-z0-9] [!?:;] }
  { {},         % Keep the letter/digit
    { insert, penalty = 10000 },                 % Insert a penalty...
    { insert, spacefactor= .8 .3 .8, data = 1 }, % ... and a space
    {}          % Keep the punctuation 
  }
```

## More examples

* [Using Demotic Alef unicode character with Noto font package](https://tex.stackexchange.com/a/695174/5735)
* [Replacing `` and '' with guillemets without touching the source code](https://tex.stackexchange.com/a/717176/5735)
* [How to typeset ancient Persian scripts in LaTeX](https://tex.stackexchange.com/a/741645/5735)
* [Add extra kerning before certain punctuation in Babel, but not for the typewriter font](https://tex.stackexchange.com/a/682190/5735)
* [Soft hyphens with priority don't change style with their environment](https://tex.stackexchange.com/a/652757/5735)
* [How to avoid linebreak after command and before period?](https://tex.stackexchange.com/a/570428/5735)
* [Apply lefthyphenmin to parts of a word spelled with hyphens](https://tex.stackexchange.com/a/554788/5735)
* [Serbian Cyrillic using LuaTeX and XeTeX](https://tex.stackexchange.com/a/742106/5735)
* [Wrong rendering of Bengali alphabet](https://tex.stackexchange.com/a/747716/5735)

## Useful links

* [Patterns](https://www.lua.org/pil/20.2.html), in the Lua site.
