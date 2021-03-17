## Keys in `ini` files

(*Under development.*)

Many keys are related to the CLDR (Common Language Data Repository).

Here are some explanations for dates:

http://cldr.unicode.org/translation/date-time-names 
 
For example, about narrow:

> The narrow date fields are the shortest possible names (in terms of
width in common fonts), and are not guaranteed to be unique. Think of
what you might find on a credit-card-sized wallet or checkbook
calendar, such as in English for days of the week:

> S M T W T F S

About **exemplarCharacters**:

It can help to recognize a language. This list and the punctuation
list are currently not used by `babel`.

About numbers:

See

http://cldr.unicode.org/translation/numbering-systems 

The section about numbers may be used by some package to format
numbers (or even `babel` itself in a future). They reflect local tradicional
usage, not the international one set by either the SI or ISO 80000.
