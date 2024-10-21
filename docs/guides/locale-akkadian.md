# Akkadian

This page offers basic guidance on typesetting a LaTeX document in the
Akkadian language using the Sumero-Akkadian Cuneiform script.

## Support with `ini` locale file

Here is a minimal sample file with `akkadian` as the main language, with `luatex`.

```tex
\documentclass[akkadian]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}[Renderer=Harfbuzz]{Noto Sans Cuneiform}

% The next 2 lines make sure the Latin script is displayed.
\babelprovide[onchar=fonts letters]{english}
\babelfont[english]{rm}{NewComputerModern10}

\begin{document}

Local name $=$ 𒀝𒅗𒁺𒌑

\end{document}
```

![](../media/locale-akkadian.png)

You may need download the font or replace it with another one in your
system.