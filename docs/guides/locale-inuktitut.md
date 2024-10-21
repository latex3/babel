# Inuktitut

This page offers basic guidance on typesetting a LaTeX document in the
Inuktitut language using the Unified Canadian Aboriginal Syllabics script.

## Support with `ini` locale file

Here is a minimal sample file with `inuktitut` as the main language, with `luatex`.

```tex
\documentclass[inuktitut]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}[Renderer=Harfbuzz]{FreeSans}

\begin{document}

Local name $=$ ᐃᓄᒃᑎᑐᑦ

Today $=$ \today

\end{document}
```

![](../media/locale-inuktitut.png)