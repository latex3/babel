# What's new in babel 3.77

(*Draft. Under development.* **Syntax liable to change**.)

## More on calendars: `\localedate` and `\today`.

Based on the CLDR and the ICU, now `ini` files contain some information
on calendars. It’s used to set the default calendar in a few locales. 

`\localedate` now accepts a valueless key named `convert`, which is
basically syntactical sugar, because all it does is to convert
arguments with the year, month and day in the gregorian calendar to the
calendar set with `calendar=`. For example:
```tex
\localedate[calendar=islamic-civil, convert]{\year}{\month}{\day}
```
This will print the date in the Islamic Civil calendar using the format
for the `islamic` date in the `ini` file, as loaded by `\babelprovide`.
Without `convert`, the arguments are the converted date.

A new option in `\babelprovide` named calendar sets the defaults to be
used in `\localedate`, which turn is used in by `\today`. So, if you
want to apply the settings in the previous example to all dates, you
may write something like:
```tex
\babelprovide[import, calendar=islamic-civil]{arabic}
```
(Of course, different territory locales can be assigned different
default calendars.) The arguments in `\localedate` are still those
corresponding to the calendar, but you can set `convert` in the
optional argument.

A special notation is used to enter the date variant in `\babelprovide`.
For example:
```tex
\babelprovide[import, calendar=gregorian.izafa]{northernkurdish}
```

If the calendar is gregorian, you may omit it. A variant in this case
is just preceded by a dot:
```tex
\babelprovide[import, calendar=.izafa]{northernkurdish}
```

Calendars in the CLDR are, actually, territory based (which is somewhat
questionable in certain cases). So the settings are those for the
region in territory locales (ie, with a region in the BCP 47 tag) or
the ‘likely’ tag in language locales (without a region).

Note the preferred calendar in the CLDR for the Arabic locales
currently provided by `babel` is `gregorian`, except `ar-SA` (Saudi
Arabia), named `arabic-saudi` or `arabic-sa`), which is new in version
3.77.

<span style="color:red;">⚠</span> Locales for IR (Iran) and AF
(Afghanistan) now will print the date with the Persian calendar by
default: Persian, Northern Luri, Mazanderani, Pashto.

## Locales

* As explained above, a new locale for Arabic has been added, namely,
  `arabic-saudiarabia` (or `arabic-sa`). By default its calendar is Umm
  al-Qura.
  
## `Ini` files for German

Currently the German `babel` styles in its `ldf` form have names which
aren’t compatible with those standarized in the Unicode CLDR: on the
one hand, the CLDR assigns the name ‘Swiss German’ to a different
language (BCP 47 `gsw`), and on the other, the `ldf` variant for
`german` isn’t even the option to be used for German (except if you
want the pre-1996 orthography). A somewhat hackish fix han been devised
to load the correct `ini` file (which contains relevant data to
identify internally the locale), based on the hyphenation patterns
assigned to the those names, as well as to `austrian`.

With this fix, and when loaded with `\babelprovide` or on the fly,
`de-CH` has the alternative name `swisshighgerman` and that
`swissgerman` refers to `gsw`.

## Fixes

* The format for the Thai calendar was incorrect. 
