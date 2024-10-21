# Phoenician

This page offers basic guidance on typesetting a LaTeX document in the
Phoenician language using the Phoenician script.

## Support with `ini` locale file

Here is a minimal sample file with `phoenician` as the main language, with `luatex`.

```tex
\documentclass[phoenician]{article}

\usepackage[provide=*,bidi=basic]{babel}

\babelfont{rm}[Renderer=Harfbuzz]{FreeSans}

\begin{document}

Local name $=$ 𐤃𐤁𐤓𐤉𐤌 𐤊𐤍𐤏𐤍𐤉𐤌

\end{document}
```

![](../media/locale-phoenician.png)