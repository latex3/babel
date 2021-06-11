## Bengali

For the Bengali or Bangla language, the `Harfbuzz` renderer in `luatex`
is recommended. Here is a minimal example:
```tex
\documentclass{article}
\pagestyle{empty}

\usepackage[bengali, provide=*]{babel}
\babelfont{rm}[Renderer=Harfbuzz]{FreeSerif}

\begin{document}

বাংলা ভাষা বিকাশের ইতিহাস ১৩০০ বছর পুরনো। চর্যাপদ এ ভাষার আদি নিদর্শন।

\end{document}
```
![](../media/bengali-sample-luatex.png)

It works with `xetex`, too, with the same output, but with this engine
there is no need the set the renderer (it’s always Harfbuzz).


