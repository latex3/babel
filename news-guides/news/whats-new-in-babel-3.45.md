# What's new in babel 3.45

2020-06-10

**Note.** There is a typo in the note on p. 19 of the manual. It should read: “... as a rule of thumb prefer the default renderer, and resort to Harfbuzz only if the former does **not** work for you.”

## Date

The command `\localedate` admits an optional argument with two keys: `calendar` and `variant`. With them you have access to non-Gregorian date formats defined in `ini` files. The three arguments are those in the corresponding
lunisolar calendar. They are _not_ the Gregorian data to be converted (which means 13 is a valid month number with `calendar=hebrew`).
 
Note currently `babel` doesn't convert dates between calendars, because a general tool for this purpose could be as large as babel itself, and very likely it's best done by a separate package (or even an external program, see below).

`ini` files with strings defined for some non-Gregorian calendar are: `ar`, `ar-*`, `he`, `fa`, `hi`.

Even with a certain calendar there may be variants. In Kurmanji the default variant prints something like ''30. Çileya Pêşîn 2019'', but with `variant=izafa` it prints ''31’ê Çileya Pêşînê 2019''.

## Digits

The commands `\localenumeral` and `\localecounter` admit the type `digits` for the native digits (ie, as defined with `numbers/digits.native`).

## Changes in `ini` files

### Kurdish

Thanks to Sina Ahmadi, from [Kurdish XeLaTeX Users Group](kurdishxelatex.github.io) project.

### Marathi

New version contributed by [Niranja Tambe](https://github.com/NiranjanTambe).

### Fixes in Hindi, Macedonian and Ancient Greek

A couple of wrong settings have been fixed: `prehyphenchar` in Hindi was set to 0 (now the hyphen is not removed), and the OpenType script tag in Ancient Greek is `PGR` instead of `ELL`. There are also a few changes in Macedonian (by [Stojan Trajanovski](https://github.com/tstojan)).

## Fixes

* Improved handling of math with `\babelposthyphenation` and `\babelprehyphenation` (it was ignoring too much).
* An error related to `\bbl@foreign@x` could be raised in some rare cases (and also if the formats were not rebuilt, but this was expected).
* Not sure it's a bug, but it was a quite unexpected behaviour (and annoying, because it was not easy to fix): `\MakeUppercase{\today}` didn't uppercase the date.

## Appendix. Using an external program for dates

An example with Windows and Powershell. Create a file named `hijridate.ps1`:
```powershell
$today = [datetime]::Now

$calendar = New-Object System.Globalization.HijriCalendar

echo "\def\HijriDay{$($calendar.GetDayOfMonth($today))}"
echo "\def\HijriMonth{$($calendar.GetMonth($today))}"
echo "\def\HijriYear{$($calendar.GetYear($today))}"
```
Then:
```
PowerShell.exe -WindowStyle hidden ./hijridate.ps1 >today.tex 
```
and a file is generated with something like:
```tex
\def\HijriDay{9}
\def\HijriMonth{10}
\def\HijriYear{1441}
```
Please, fell free to contribute a Unix version (as an issue or, better, as a pull request), or even to create your own package 🙂.
