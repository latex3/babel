# Santali

This page offers basic guidance on typesetting a LaTeX document in the
Santali language using the Ol Chiki script.

## Support with `ini` locale file

Here is a minimal sample file with `santali` as the main language, with `luatex`.

```tex
\documentclass[santali]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}[Renderer=Harfbuzz]{Noto Sans Ol Chiki}

% The next 2 lines make sure the Latin script is displayed.
\babelprovide[onchar=fonts letters]{english}
\babelfont[english]{rm}{NewComputerModern10}

\begin{document}

Local name $=$ ᱥᱟᱱᱛᱟᱲᱤ

Today $=$ \today

Digits $=$ \localenumeral{digits}{0123456789}

\end{document}
```

![](../media/locale-santali.png)

You may need download the font or replace it with another one in your
system.