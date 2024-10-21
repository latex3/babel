# Limbu

This page offers basic guidance on typesetting a LaTeX document in the
Limbu language using the Devanagari script.

## Support with `ini` locale file

Here is a minimal sample file with `limbu` as the main language, with `luatex`.

```tex
\documentclass[limbu]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}[Renderer=Harfbuzz]{Shobhika}

\begin{document}

Local name $=$ लिम्बु भाषा

\end{document}
```

![](../media/locale-limbu.png)