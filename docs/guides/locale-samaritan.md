# Samaritan

This page offers basic guidance on typesetting a LaTeX document in the
Samaritan language using the Samaritan script.

## Support with `ini` locale file

Here is a minimal sample file with `samaritan` as the main language, with `luatex`.

```tex
\documentclass[samaritan]{article}

\usepackage[provide=*,bidi=basic]{babel}

\babelfont{rm}[Renderer=Harfbuzz]{Noto Sans Samaritan}

% The next 2 lines make sure the Latin script is displayed.
\babelprovide[onchar=fonts letters]{english}
\babelfont[english]{rm}{NewComputerModern10}

\begin{document}

Local name $=$ ࠏࠁࠓࠉࠕ

\end{document}
```

![](../media/locale-samaritan.png)

You may need download the font or replace it with another one in your
system.