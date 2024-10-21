# Hmong Njua

This page offers basic guidance on typesetting a LaTeX document in the
Hmong Njua language using the Nyiakeng Puachue Hmong script.

## Support with `ini` locale file

Here is a minimal sample file with `hmongnjua` as the main language, with `luatex`.

```tex
\documentclass[hmongnjua]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}[Renderer=Harfbuzz]{Noto Serif Hmong Nyiakeng}

% The next 2 lines make sure the Latin script is displayed.
\babelprovide[onchar=fonts letters]{english}
\babelfont[english]{rm}{NewComputerModern10}

\begin{document}

Local name $=$ 𞄀𞄄𞄰𞄩𞄍𞄜𞄰

Today $=$ \today

Digits $=$ \localenumeral{digits}{0123456789}

\end{document}
```

![](../media/locale-hmongnjua.png)

You may need download the font or replace it with another one in your
system.