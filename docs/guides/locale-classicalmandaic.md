# Classical Mandaic

This page offers basic guidance on typesetting a LaTeX document in the
Classical Mandaic language using the Mandaean script.

## Support with `ini` locale file

Here is a minimal sample file with `classicalmandaic` as the main language, with `luatex`.

```tex
\documentclass[classicalmandaic]{article}

\usepackage[provide=*,bidi=basic]{babel}

\babelfont{rm}[Renderer=Harfbuzz]{Noto Sans Mandaic}

% The next 2 lines make sure the Latin script is displayed.
\babelprovide[onchar=fonts letters]{english}
\babelfont[english]{rm}{NewComputerModern10}

\begin{document}

Local name $=$ ࡓࡀࡈࡍࡀ

\end{document}
```

![](../media/locale-classicalmandaic.png)

You may need download the font or replace it with another one in your
system.