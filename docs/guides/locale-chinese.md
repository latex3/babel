# Chinese

Chinese is available for `xetex` and `luatex`. With the latter, both
renderers (the default and Harfbuzz) are fine.

Note the best option is usually to resort to a dedicated framework like
[CTeX](https://ctan.org/pkg/ctex), [CJK](https://ctan.org/pkg/cjk) or
[ChineseJFM](https://ctan.org/pkg/chinese-jfm). However, for simple
documents in horizontal writing, as well as a few words or sentences in
a multilingual document, `babel` should be enough.

Here is a short example:
```tex
\documentclass{book}

\usepackage[chinese, provide=*]{babel}

\babelfont{rm}{FandolSong}

\begin{document}

\chapter{天山山脉}

位于乌鲁木齐市以东的博格达峰海拔5445米，峰上的积雪终年不化，人们称它“雪海”。位于博格达峰山腰的天池，清澈透明，是新疆著名的旅游胜地。目前，博格达峰自然保护区已纳入联合国“人与生物圈”自然保护区网。托木尔峰，海拔7439米，是天山的最高峰，登山界一般承认1956年阿巴拉科夫首次登顶成功，但也有说1938年已有苏联登山队登顶；1975年7月25日首个中国登山队登顶成功。

\end{document}
```

![](../media/chinese-sample.png)

## Line breaking

Rules are harcoded in XeTeX, but in LuaTeX a line breaking mechanism
has been devised, based on (but not strictly following) the Unicode
algorithm.

Justification in both engines is controlled by a couple of options in
`\babelprovide`.

* `intraspace` sets the inner spaces in em units (so, `0 .1 0` is 0em
  plus .1em). The em unit applied is that of the current text (more
  precisely, the previous glyph).
* `intrapenalty` sets the inner penalty of the breaking opportunities.

There is in addition the posibility to change globally the line
breaking class, with, for example:
```tex
\babelcharproperty{`“}{linebreak}{op}
\babelcharproperty{`”}{linebreak}{cl}
```
   
For the meaning of these codes, see the [Unicode Standard Annex #14:
Line Breaking
Properties](https://www.unicode.org/reports/tr14/).


