# Amharic

This page offers basic guidance on typesetting a LaTeX document in the
Amharic language using the Ethiopic script.

## Support with `ini` locale file

Here is a minimal sample file with `amharic` as the main language, with `luatex`.

```tex
\documentclass[amharic]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}[Renderer=Harfbuzz]{FreeSerif}

\begin{document}

Local name $=$ አማርኛ

Chapter $=$ \chaptername

Today $=$ \today

\end{document}
```

![](../media/locale-amharic.png)