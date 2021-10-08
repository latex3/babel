# What's new in babel 3.64

*(Under development.)*

2021-10-??

## New counters in CJK

Some new counters has been added to the CJK languages. For Chinese and
Korean:
* `circled.ideograph`: ㊀ ㊁ ㊂ ㊃ ㊄ ㊅ ㊆ ㊇ ㊈ ㊉
* `parenthesized.ideograph`: ㈠ ㈡ ㈢ ㈣ ㈤ ㈥ ㈦ ㈧ ㈨ ㈩

And for Japanese, these two counters and also:
* `cjk-earthly-branch`: 子 丑 寅 卯 辰 巳 午 未 申 酉 戌 亥
* `cjk-heavenly-stem`: 甲 乙 丙 丁 戊 己 庚 辛 壬 癸

## Revert fix for `\selectlanguage`

In version
[3.61](https://latex3.github.io/babel/news/whats-new-in-babel-3.61.html#fixes)
there was a partial fix for the `\write` issue with `\selectlanguage`
(see [\selectlanguage pushes section to new
page](https://github.com/latex3/babel/issues/114)). As explained in the
news page for that release “the fix is not perfect and it can even lead
to some problems”, but it was introduced in the hope these problems
will be less frequent and not too serious, but it has turned out it was
not so.

The previous behavior has been restored, but it can be configured in
the following way:
* `\babeladjust{ select.write = shift }`, which shifts the skips down
  and adds a `\penalty`. 
* `\babeladjust{ select.write = keep }`, which is again the default
  behavior. With it the `\write` and the skips are kept in the order
  they are written.
* `\babeladjust{ select.write = omit }` may seem a too drastic solution,
  because `\selectlanguage` doesn’t write anything, but more often
  than not this command is applied to more or less shorts texts with no
  sectioning or similar commands and therefore no language
  synchronization is necessary.

I think this issue must be considered a ‘known issue’, because it
seems unfixable (except, perhaps, by manipulating the vertical list
with `luatex`).

## Fixes

* Babel errors on document option `chinese` (#141)

* In some `ini` files multiple `babel.name`’s were separated keys with a
  suffix (`A`, `B`), and in some other they were grouped in a single
  key with space separated names. Now only the latter system (a single
  key) is used.
  
## Other changes

An internal change is now `babel.sty` and `babel.def` are separate
files for LaTeX and Plain-based formats. Until now, `babel.sty` loaded
partially `babel.def`.

The options manager for languages (the way `babel` processes the
language options declared in the package or the class) has been
rewritten. In some cases the order languages are loaded may be
different (except the main language, of course), but I don’t think
there will be any real problems.
 