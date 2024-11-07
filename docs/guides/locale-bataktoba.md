# Batak Toba

This page offers basic guidance on typesetting a LaTeX document in the
Batak Toba language using the Batak script.

## Support with `ini` locale file

Here is a minimal sample file with `bataktoba` as the main language, with `luatex`.

```tex
\documentclass[bataktoba]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}[Renderer=Harfbuzz]{Noto Sans Batak}

% The next 2 lines make sure the Latin script is displayed.
\babelprovide[onchar=fonts letters]{english}
\babelfont[english]{rm}{NewComputerModern10}

\begin{document}

Local name $=$ ᯂᯖ ᯅᯖᯂ᯲ ᯖᯬᯅ

\end{document}
```

![](../media/locale-bataktoba.png)

You may need download the font or replace it with another one in your
system.