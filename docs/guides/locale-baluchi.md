# Baluchi

This page offers basic guidance on typesetting a LaTeX document in the
Baluchi language using the Arabic script.

## Support with `ini` locale file

Here is a minimal sample file with `baluchi` as the main language, with `luatex`.

```tex
\documentclass[baluchi]{article}

\usepackage[provide=*,bidi=basic]{babel}

\babelfont{rm}[Renderer=Harfbuzz]{FreeSerif}

\begin{document}

Local name $=$ بلۆچی

Today $=$ \today

\end{document}
```

![](../media/locale-baluchi.png)