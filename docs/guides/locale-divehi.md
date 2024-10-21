# Divehi

This page offers basic guidance on typesetting a LaTeX document in the
Divehi language using the Thaana script.

## Support with `ini` locale file

Here is a minimal sample file with `divehi` as the main language, with `luatex`.

```tex
\documentclass[divehi]{article}

\usepackage[provide=*,bidi=basic]{babel}

\babelfont{rm}[Renderer=Harfbuzz]{FreeSerif}

\begin{document}

Local name $=$ ދިވެހިބަސް

\end{document}
```

![](../media/locale-divehi.png)