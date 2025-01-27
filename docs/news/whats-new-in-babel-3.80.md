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

* More updates to the CLDR 41:
  [Galician](https://latex3.github.io/babel/guides/locale-galician.html), [Swiss German](https://latex3.github.io/babel/guides/locale-swissgerman.html), [Gujarati](https://latex3.github.io/babel/guides/locale-gujarati.html), [Hausa](https://latex3.github.io/babel/guides/locale-hausa.html),
  [Hebrew](https://latex3.github.io/babel/guides/locale-hebrew.html),
  [Hindi](https://latex3.github.io/babel/guides/locale-hindi.html),
  [Croatian](https://latex3.github.io/babel/guides/locale-croatian.html), [Upper Sorbian](https://latex3.github.io/babel/guides/locale-uppersorbian.html), [Hungarian](https://latex3.github.io/babel/guides/locale-hungarian.html), [Armenian](https://latex3.github.io/babel/guides/locale-armenian.html),
  [Interlingua](https://latex3.github.io/babel/guides/locale-interlingua.html),
  [Indonesian](https://latex3.github.io/babel/guides/locale-indonesian.html), [Igbo](https://latex3.github.io/babel/guides/locale-igbo.html), [Sichuan Yi](https://latex3.github.io/babel/guides/locale-sichuanyi.html), [Icelandic](https://latex3.github.io/babel/guides/locale-icelandic.html), [Italian](https://latex3.github.io/babel/guides/locale-italian.html),
  [Japanese](https://latex3.github.io/babel/guides/locale-japanese.html), [Ngomba](https://latex3.github.io/babel/guides/locale-ngomba.html), [Georgian](https://latex3.github.io/babel/guides/locale-georgian.html), [Kabyle](https://latex3.github.io/babel/guides/locale-kabyle.html), [Kabuverdianu](https://latex3.github.io/babel/guides/locale-kabuverdianu.html), [Kazakh](https://latex3.github.io/babel/guides/locale-kazakh.html) [Kako](https://latex3.github.io/babel/guides/locale-kako.html),
  [Kalaallisut](https://latex3.github.io/babel/guides/locale-kalaallisut.html),
  [Khmer](https://latex3.github.io/babel/guides/locale-khmer.html),
  [Kannada](https://latex3.github.io/babel/guides/locale-kannada.html),
  [Koren](https://latex3.github.io/babel/guides/locale-korean.html),
  [Konkani](https://latex3.github.io/babel/guides/locale-konkani.html), [Kashmiri](https://latex3.github.io/babel/guides/locale-kashmiri.html), [Colognian](https://latex3.github.io/babel/guides/locale-colognian.html),
  [Cornish](https://latex3.github.io/babel/guides/locale-cornish.html), [Kyrgyz](https://latex3.github.io/babel/guides/locale-kyrgyz.html), [Lakota](https://latex3.github.io/babel/guides/locale-lakota.html), [Lao](https://latex3.github.io/babel/guides/locale-lao.html), [Northern Luri](https://latex3.github.io/babel/guides/locale-northernluri.html), [Lithuanian](https://latex3.github.io/babel/guides/locale-lithuanian.html), [Macedonian](https://latex3.github.io/babel/guides/locale-macedonian.html),
  [Malayalam](https://latex3.github.io/babel/guides/locale-malayalam.html), [Mongolian](https://latex3.github.io/babel/guides/locale-mongolian.html).


