# What's new in babel 3.80

2022-09-17

## Dates

There is a new calendar for `amharic`, named `ethiopic`. 

The `ini` locale for `hungarian` provides a new date variant named
`superessive`, which prints something like ‘2022. augusztus 30-án’.

Fixed the final dot in some locale dates, which should be represented
by `[.]`. Remember you can define the behavior of this dot with
`\BabelDateDot` (which by default is `.\@`), so that you can apply
tricks like [Detect beginning of a sentence in a macro for
capitalization](https://tex.stackexchange.com/a/4870/5735).

There are a few additional fixes:
* Latin: In `pdftex`, numerals were printed in arabic form.
* Thai: Buddhist and Gregorian were reversed.
* Persian: The Persian calendar was not loaded.

## Locales

* Captions for Hausa contributed by Abubakar Yusuf (@fatherofcamels).

* More updates to the CLDR 41: Galician, Swiss German, Gujarati, Hausa,
  Hebrew, Hindi, Croatian, Upper Sorbian, Hungarian, Armenian,
  Interlingua, Indonesian, Igbo, Sichuan Yi, Icelandic, Italian,
  Japanese, Ngomba, Georgian, Kabyle, Kabuverdianu, Kazakh, Kako,
  Kalaallisut, Khmer, Kannada, Korean, Konkani, Kashmiri, Colognian,
  Cornish, Kyrgyz, Lakota, Lao, Northern Luri, Lithuanian, Macedonian,
  Malayalam, Mongolian.


