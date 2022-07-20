# What's new in babel 3.78

2022-07-20

## Changes in locale files

Minor updates to the CLDR 41: Chechen, Cherokee, Central Kurdish,
Czech, Welsh, Danish, German, Lower Sorbian, Dzongkha, Ewe, Greek,
Esperanto, Spanish, Estonian, Persian, Finnish, Filipino, Faroese,
Western Frisian, Irish, Scottish Gaelic.

Persian defines the Islamic calendar, too.

Now Scottish Gaelic provides two date formats. Following the CLDR, the
default is the dative form. The nominative form can be selected with
`variant=nominative`.

## Fixes

Undefined `\bbl@xenohyph` with XeTeX when Thai was loaded as a
secondary language (#182).

