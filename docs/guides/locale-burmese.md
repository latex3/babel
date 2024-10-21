# Burmese

This page offers basic guidance on typesetting a LaTeX document in the
Burmese language using the Myanmar script.

## Support with `ini` locale file

Here is a minimal sample file with `burmese` as the main language, with `luatex`.

```tex
\documentclass[burmese]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}[Renderer=Harfbuzz]{Padauk}

\begin{document}

Local name $=$ မြန်မာ

Today $=$ \today

Digits $=$ \localenumeral{digits}{0123456789}

\end{document}
```

![](../media/locale-burmese.png)