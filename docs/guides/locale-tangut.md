# Tangut

This page offers basic guidance on typesetting a LaTeX document in the
Tangut language using the Tangut script.

## Support with `ini` locale file

Here is a minimal sample file with `tangut` as the main language, with `luatex`.

```tex
\documentclass[tangut]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}[Renderer=Harfbuzz]{Noto Serif Tangut}

% The next 2 lines make sure the Latin script is displayed.
\babelprovide[onchar=fonts letters]{english}
\babelfont[english]{rm}{NewComputerModern10}

\begin{document}

Local name $=$ 𗼇𗟲

\end{document}
```

![](../media/locale-tangut.png)

You may need download the font or replace it with another one in your
system.