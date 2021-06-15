# What's new in babel 3.61

(Under development.)

## Danda

_Only LuaLaTex._

In Indic scripts danda and doble danda must be kept with the preceding
text even if a space is inserted. The ‘transform’ `danda.nobreak`
prevents this break.

This transform is available for Assamese, Bengali, Gujarati, Hindi,
Kannada, Malayalam, Marathi, Oriya, Tamil, Telugu.

## Improvements in Arabic justification

Kashida is disabled in horizontal boxes with internal infinite
stretching and fixed width.

With this addition, Arabic justification is
usable in many cases, as the example for Arabic in the repository shows
([tex](https://github.com/latex3/babel/blob/main/samples/lua-arabic.tex),
[pdf](https://github.com/latex3/babel/blob/main/samples/lua-arabic.pdf)).
Remember, however, the interface may change slightly in the future.

## Other changes



