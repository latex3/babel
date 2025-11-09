# What's new in babel 25.15

2025-11-09

## Improvements in Greek

### Unicode engines

Now, `greek`, `polytonicgreek`, `ancientgreek` and the new
`monotonicgreek` employ by default a combination of the corresponding
`ldf` and `ini` files with Unicode engines (the now discouraged
`xelatex` and the recommended `lualatex`), to fix a wrong rendering of
diacritics (#363).

### Dates

3 variants of the gregorian calendar are now available with the `ini`
mechanism:
* `greek`, `monotonicgreek` and `polytonicgreek` prints by default the numbers with Arabic digits,
  but the `letters` variant prints them with the [`lower.modern` counter](https://latex3.github.io/babel/guides/list-of-counters.html#polytonic-greek-el-polyton).
* `ancientgreek` uses by default the
 [`lower.ancient`
 counter](https://latex3.github.io/babel/guides/list-of-counters.html#ancient-greek-grc)
 (with stigma), but Arabic ones
  are also available with the `digits` variant. Of course, gregorian
  dates with Ancient Greek (to 1453, according to the IANA) is somewhat
  anachronistic.
* In addition, `ionian`, available in all locales, uses the `ionian`
  counter (see next section).
  
The Julian calendar (still in use) and some old Greek calendars are
under study.
  
### Ionian numerals
  
With the `ini` mechanism, instead of the *ad hoc* macro `\greeknumeral`,
you can also use `\localenumeral` and `\localecounter`. Its name is
`ionian`, so that
```tex
\localenumeral{ionian}{996}
```
will print ϡϟϛʹ. In addition, the numbers 6, 90 and 900 can be
redefined with `\BabelGreekNumeralVI`, `\BabelGreekNumeralXC` and
`\BabelGreekNumeralCM` as shown:
 ```tex
\renewcommand\BabelGreekNumeralXC{ϙ}
```
With it, the previous example will print ϡϙϛʹ.

### Attic numerals

There is a new counter with the `ini` mechanism, named `attic`. It
requires a font with the corresponding acrophonic numerals, like
NewComputerModern10, FreeSerif or Cardo.

### A couple of tips

Remember counters can be configured. Here is an example:
{% raw %}
```tex
\usepackage[greek,
  provide={
    counters/lower.ancient.2 = ι κ λ μ ν ξ ο π ϙ,
    date.gregorian/date.long={[d|lower.ancient] [MMMM] [y|lower.ancient]}}
]{babel}
```
{% endraw %}
The 90 is now a koppa (ϙ) with the `lower.ancient` counter and the day and
the year are printed in those numerals (which means a stigma for the 6).

You can also define your own additive counters (the example is now with
`\babelprovide`):
```tex
\babelprovide[
  counters/nokeraia.1  = α β γ δ ε στ ζ η θ,
  counters/nokeraia.2  = ι κ λ μ ν ξ ο π ϟ,
  counters/nokeraia.3  = ρ σ τ υ φ χ ψ ω ϡ,
  counters/nokeraia.4 = ͵α ͵β ͵γ ͵δ ͵ε ͵στ ͵ζ ͵η ͵θ
]{greek}
```

## `\babelfont`, extended syntax

Initially, the syntax for `\setmainfont` and friends was
`\setmainfont[options]{font}`, and the order of arguments with
`\babelfont` was similar. Some time ago, the recommended syntax was
changed to `\setmainfont{font}[options]`, but `babel` didn’t follow it,
which was an anomaly. Now, `\babelfont[lang]{fam}{font}[options]` is
also valid.
               
## Fixes in transforms

The`{HHHH}` syntax didn’t work in the last argument of a map with
`{n|..|..}`. There were also some issues with special characters like
braces or the hash (i.e., `{007b}`, `{007d}`, `{0023}`). They have been
sorted out.

## Other changes

Fix the glossary name in Turkish (thanks to [@siaeyy](https://github.com/siaeyy)).

An internal change is the creation of a new folder in the `locale`
directory named `invalid`. It contains files with names invalid in the
`ini` mechanism, but still necessary for the `ldf` mechanism, either
for backward compatibility (e.g., `samin`) or because of some legacy
behavior (e.g., `ngerman`).

There are also some readjustments in some of the messages shown.


