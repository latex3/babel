# Lao

This page offers basic guidance on typesetting a LaTeX document in the
Lao language using the Lao script.

## Support with `ini` locale file

Here is a minimal sample file with `lao` as the main language, with `luatex`.

```tex
\documentclass[lao]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}[Renderer=Harfbuzz]{Noto Serif Lao}

% The next 2 lines make sure the Latin script is displayed.
\babelprovide[onchar=fonts letters]{english}
\babelfont[english]{rm}{NewComputerModern10}

\begin{document}

Local name $=$ ລາວ

Chapter $=$ \chaptername

Today $=$ \today

Digits $=$ \localenumeral{digits}{0123456789}

\end{document}
```

![](../media/locale-lao.png)

You may need download the font or replace it with another one in your
system.