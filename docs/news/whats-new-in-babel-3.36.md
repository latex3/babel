# What's new in babel 3.36

2019-11-14

## Switching on and off global features

Sometimes you might need to disable some global `babel` features and the macro `\babeladjust`has been add for this. For example, you can set `\babeladjust{bidi.text=off}` if you are using an alternative algorithm or with large sections not requiring bidi text. 

## Polytonic Greek

A new ini file, thanks to Claudio Beccari.

![](../media/polytonic-greek.jpg)

## Improvements in Chinese

Now language and script are correctly set for Chinese Tradicional and Chinese Simplified.