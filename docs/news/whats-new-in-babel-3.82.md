# What's new in babel 3.82

*Draft*

## Predefined tranforms with \babelprovide

Now transforms can be activated with a second `\babelprovide` (or after
a `provide=*`), so that the following code is valid:
```tex
\usepackage[kannada, provide=*]
\babelprovide[transforms = danda.nobreak]{kannada}
```
Formerly, the transform was ignored except if requested in the very
first call.

## Tibetan (xetex)

Some adjustements has been added to the ini file for Tibetan for it to
work with XeTeX. However, features like text padding with tshegs won’t
be available, because of the limitations of this engine.

## Fixes

* `babel` restored in part the old `\MakeUppercase` and
  `\MakeLowercase`, which meant macros like `\label` raised again an
  error. A new patch minimizes this side effect.
* Fix for #182 (error with Thai and XeTeX) was not complete.
  
## More updates to the CLDR 41

Albanian, Kinyarwanda, Maltese, Odia (= Oriya), Ossetic, Pashto,
Polish, Portuguese, Punjabi, Romanian, Romansh, Russian, Sakha,
Sinhala, Slovak, Slovenian, Somali.




