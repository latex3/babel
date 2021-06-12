## Arabic

Arabic is available for `pdftex`, `xetex`, and `luatex`, but the
preferred engine is the latter, because of its unique features for
bidirectional texts, not requiring explicit mark up.

The recommended basic settings for a monolingual Arabic document in
`luatex` is (please, note your browser might not be rendering correctly
the source code):
```tex
\documentclass{article}

\usepackage[arabic, provide=*, bidi=basic, layout=counters.tabular]{babel}
\babelfont{rm}[Renderer=Harfbuzz]{FreeSerif}

\begin{document}

الموسيقى أو الموسيقا هي فن مؤلف من الأصوات والسكوت عبر فترة زمنية،
ويعتقد العلماء بأن كلمة الموسيقى يونانية الأصل، وقد كانت تعني سابقا
الفنون عموما غير أنها أصبحت فيما بعد تطلق على لغة الألحان فقط.

\end{document}
```

![](https://user-images.githubusercontent.com/1314536/97981471-a6943300-1dd2-11eb-8f13-3fb5c20dc355.png)

There is a complete example (with tables, columns, a figure, a
description, etc.) in the repository
([tex](https://github.com/latex3/babel/blob/main/samples/lua-arabic.tex), 
[pdf](https://github.com/latex3/babel/blob/main/samples/lua-arabic.pdf)).
It uses the tentative algorithm for justification with kashida.

### Useful links

* [Automatic enumerate list using eastern Arabic letters in beamer](https://tex.stackexchange.com/a/599846/5735)
* [Itemize environment in Arabic](https://tex.stackexchange.com/a/528562/5735)

