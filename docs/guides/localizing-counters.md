# Localizing counters

Some random thoughts.

Localizing counters is far from trivial because their format can be set only with a set of macros clearly having English and a few other languages in mind. 

Some dangerous hacks have been applied previously, such as mapping `\roman` to another counter or converting `\chaptername`, which should be a string, in a sort of function with several arguments. 

Mapping the standard counters makes sense in some cases. For example, `\alph` can be replaced by a counter with a different alphabet, including not only a different script (eg, Devanagari), but also variations in a script (a letter added in Spanish, some of them removed in legal documents in Italian). `\arabic` may be replaced by another set of decimal digits. More doubtful is to replace `\roman` by another counter, even if it's also an additive numeral system, but in many cultures Roman numeral are not used and therefore some replacement can be necessary.

So, I'm investigating several approaches, trying to take into account the fact many classes take some stylistics decisions.

Some ideas:

* Traverse all `\the...` to replace a certain counter by another one. This kind of replacements is technically problematic, but the result is the logical one. For example, `\thefigure` may get converted from `\ifnum\c@chapter>\z@\thechapter.\fi\@arabic\c@figure}` to `\ifnum\c@chapter>\z@\thechapter.\fi\localecounter{mydigits}{figure}}`. An obvious limitation is we must know which `\the...` macros have been defined.
* Directly redefine `\the<counter>`, technically straightforward, but what if this counter has been redefined by a style? And even worse, some of these macros might be dynamically redefined with hardcodes changes.
* With CJK languages (and some others), a few sectioning commands must be redefined or patched, because the string `<section name> <section label>` is hardcoded.

Or perhaps treating differently chapters, footnotes, lists, and on so on.
