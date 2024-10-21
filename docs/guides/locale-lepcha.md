# Lepcha

This page offers basic guidance on typesetting a LaTeX document in the
Lepcha language using the Lepcha script.

## Support with `ini` locale file

Here is a minimal sample file with `lepcha` as the main language, with `luatex`.

```tex
\documentclass[lepcha]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}[Renderer=Harfbuzz]{Noto Sans Lepcha}

% The next 2 lines make sure the Latin script is displayed.
\babelprovide[onchar=fonts letters]{english}
\babelfont[english]{rm}{NewComputerModern10}

\begin{document}

Local name $=$ ᰛᰩᰵᰛᰧᰵᰶ

\end{document}
```

![](../media/locale-lepcha.png)

You may need download the font or replace it with another one in your
system.