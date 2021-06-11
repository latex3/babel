### Arabic

Recommended basic settings for a monolingual Arabic document in `luatex` (please, note your browser might not be rendering correctly the source code):
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
