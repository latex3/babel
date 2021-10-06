# What's new in babel 3.64

*(Under development.)*

2021-10-??

## New counters in CJK

Some new counters has been added to Japanese.

## Revert fix for `\selectlanguage`

In version 3.61 there was a partial fix for the `\write` issue with
`\selectlanguage`. See [\selectlanguage pushes section to new
page](https://github.com/latex3/babel/issues/114). As explained un the
news page for that release «the fix is not perfect and it can even lead
to some problems», but it was introduced in the hope these problems
will be less frequent and not too serious, but it turned out it was not
so.

The previous behavior has been restored, but it can be configured in
the following way:
* `\babeladjust{ select.write = shift }, which shifts the skips down
  and adds a `\penalty`. 
* `\babeladjust{ select.write = keep }, which is again the default
  behavior. With it the `\write` and the skips are kept in the order they are
  written.

I thinkk this issue must be considered a ‘known issue’, because it
seems unfixable.

## Fixes

* Babel errors on document option `chinese` (#141)

* In some `ini` files multiple `babel.name`’s were separated keys with a
  suffix (`A`, `B`), and in some other they were grouped in a single
  key with space separated names. Now only the latter system (a single
  key) is used.
 