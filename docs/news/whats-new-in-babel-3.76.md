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

Currently, the calendar `hebrew` has been added to `hebrew`/`he`, as
well as `islamic-civil` and `islamic-umalqura` to `arabic` / `ar`. An
example is (**Syntax liable to change.**):
```
\babelcalendar[2022-04-01]{islamic-civil}\iyear\imonth\iday
\localedate[calendar=islamic]\iyear\imonth\iday
```
Without the optional argument the current date is used.

The Umm al-Qura calendar is restricted to years close to the current
one (approx. 1435-1460). 

Of course new tools will be added to configure the locales when they
are loaded.






