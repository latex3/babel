# What's new in babel 24.15

2024-12-21

There are further improvements in the manual, thanks to Barbara Beeton. 

## New locale for `interslavic`

Thanks to [Adiee5](https://github.com/adiee5).

With a basic variant, because this constructed language has a flexible
orthography. It recently got an ISO code (`isv`).

## Fixes

* (lua) Boxed text where processed by transforms twice when unboxed
  with `\unhbox` and the like, which could even lead to a cryptic lua
  error.

* The new default `import` for lazy loading was not honored in some
  cases when `\babelfont` was used.


