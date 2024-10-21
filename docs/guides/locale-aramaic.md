# Aramaic

This page offers basic guidance on typesetting a LaTeX document in the
Aramaic language using the Imperial Aramaic script.

## Support with `ini` locale file

Here is a minimal sample file with `aramaic` as the main language, with `luatex`.

```tex
\documentclass[aramaic]{article}

\usepackage[provide=*,bidi=basic]{babel}

\babelfont{rm}[Renderer=Harfbuzz]{Noto Sans Imperial Aramaic}

% The next 2 lines make sure the Latin script is displayed.
\babelprovide[onchar=fonts letters]{english}
\babelfont[english]{rm}{NewComputerModern10}

\begin{document}

Local name $=$ 𐡀𐡓𐡌𐡉𐡀

\end{document}
```

![](../media/locale-aramaic.png)

You may need download the font or replace it with another one in your
system.