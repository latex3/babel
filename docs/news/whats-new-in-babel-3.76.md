# What's new in babel 3.76

*(Draft, under development.)*

## Calendars

Although calendars aren’t the primary concern of `babel`, the package
should be able to, at least, generate correctly `\today` in the way
users would expect in its own culture. Currently, [`\localedate` can
print dates in a few
calendars](https://latex3.github.io/babel/news/whats-new-in-babel-3.45.html)
(provided the `ini` locale file has been imported), but year, month and
day had to be entered by hand, which is very inconvenient.

Until now, `babel` provided just the Hebrew calendar with `hebcal.sty`,
which shows how cumbersome can be the required computations with pure
TeX. Now, thanks to the `l3fp` library, they are quite straighforward.

There are coverters for 3 calendars:

***Hebrew.*** Basically the set of TeX macros written by Rozman in 1991,
   with corrections and adaptions by Porrat, Misha, Haran and Lavva.
   This must be eventually replaced by computations with `l3fp`.

***Islamic.*** Two calendar are defined: `islamic-civil` (arithmetical) 
   and `islamic-umalqura`. The code for the former has been taken from
   `calendar.js` by John Walker (public domain). The Umm al-Qura
   calendar, used mainly in Saudi Arabia, is based on
   [`islamdate_today.js`](https://webspace.science.uu.nl/~gent0113/islam/addfiles
   (by R. H. van Gent). Since the main aim is to provide a suitable
   `\today`, and maybe some close dates, data for `islamic-umalqura`
   just cover Hijri ~1435/~1460 (Gregorian ~2014/~2038).
     
***Persian.*** There is an algorithm written in TeX by Jabri,
   Abolhassani, Pournader and Esfahbod, created for the first versions
   of the FarsiTeX system (no longer available), but the original
   license is GPL, so its use with LPPL is problematic. The code here
   follows loosely that by John Walker (see above), which is free and
   accurate, but sadly very complex, so the relevant data for the years
   2013-2050 have been pre-calculated and stored. Actually, all we need
   is the first day of the Jalali year (either March 20 or March 21).

An example is (**Syntax liable to change.**):
```tex
\babelcalendar[2022-04-01]{islamic-civil}\iyear\imonth\iday
\localedate[calendar=islamic]\iyear\imonth\iday
```
Without the optional argument the current date is used.

Of course new tools will be added to configure the locales when they
are loaded.






