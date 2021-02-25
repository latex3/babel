# Using `\babelprovide` to modify or extend locales

As explained in the manual, `\babelprovide` is an all-purpose command to both define a new language and modify an existing language. This article provides examples on how to modify a language loaded as a package option.

**All the examples assume:**
```tex
\usepackage[english]{babel}
```

### Changing the hyphenation rules

Because there are several criteria, or you must follow and editorial style. The following example just uses the default Spanish rules in English
```tex
\babelprovide[hyphenrules=spanish]{english}
```

### Native digits

The required ones are already defined in the corresponding `ini` files, but they can be modified and even added as shown:
```tex
\babelprovide[numbers/digits.native=abcdefghij]{english}
```
This example is somewhat absurd, but now `\englishdigits{264}` will print `cge`. ⚠ It doesn't work with `pdftex` yet, only `xetex` and `luatex`.

### Dates

Currently they can be changed only with imported data:
```tex
\babelprovide[import, date.gregorian/date.long = {[d] ([MMMM]) [y]}]{english}
```

### Set the hyphen to none

Only with `luatex`:
```tex
\babelprovide[typography/prehyphenchar = 0]{english}
```
This setting *may* work with `xetex`, but getting rid of the hyphen char in this engine is not trivial, because you must rely on the font, and not all fonts behave the same, but `babel` 3.46 will do its best.

### New counters

You can define new counters freely, and assign them to `\alph`:
```tex
\babelprovide[counters/alphabetic = á é í ó ú, % Define a counter named `alphabetic`
              alph = alphabetic                % Assign it to `\alph`
              ]{english}
```
You can choose the name and instead of `alphabetic` it can be another one.
