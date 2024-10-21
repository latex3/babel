# Lü

This page offers basic guidance on typesetting a LaTeX document in the
Lü language using the New Tai Lue script.

## Support with `ini` locale file

Here is a minimal sample file with `lu` as the main language, with `luatex`.

```tex
\documentclass[lu]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}[Renderer=Harfbuzz]{Noto Sans New Tai Lue}

% The next 2 lines make sure the Latin script is displayed.
\babelprovide[onchar=fonts letters]{english}
\babelfont[english]{rm}{NewComputerModern10}

\begin{document}

Local name $=$ ᦅᧄᦺᦑᦟᦹᧉ

\end{document}
```

![](../media/locale-lu.png)

You may need download the font or replace it with another one in your
system.