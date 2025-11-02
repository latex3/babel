# What's new in babel 25.15

**Draft.**

## Improvements in Greek

Now, `polytonicgreek` and `ancientgreek` employ by default a
combination of the corresponding `ldf` and `ini` files with Unicode
engines (the now discouraged `xelatex` and the recommended `lualatex`),
to fix a wrong rendering of diacritics (#363).

Two variants of the gregorian calendar are now available with the `ini`
mechanism:
* `polytonicgreek` prints by default the numbers with Arabic digits,
  but the `ionian` variant prints them with letters in the [‘modern’
  form](https://latex3.github.io/babel/guides/list-of-counters.html#polytonic-greek-el-polyton).
* `ancientgreek` uses by default the `ionian` numeral in the [‘ancient’
  form](https://latex3.github.io/babel/guides/list-of-counters.html#ancient-greek-grc) (with stigma), but Arabic ones
  are also available with the `digits` variants. Of course, gregorian
  dates with Ancient Greek (to 1453, according to the IANA) is somewhat
  anachronistic.  [under study].
  
## Fixes in transforms

The`{HHHH}` syntax didn’t work in the last argument of a map with
`{n|..|..}`. There were also some issues with special characters like
braces or the hash (i.e., `{007b}`, `{007d}`, `{0023}`). They have been
sorted out.

## Other changes

An internal change is the creation of a new folder in the `locale`
directory named `invalid`. It contains files with names invalid in the
`ini` mechanism, but still necessary for the `ldf` mechanism, either
for backward compatibility (e.g., `samin`) or because of some legacy
behavior (e.g., `ngerman`). 

