# Chakma

This page offers basic guidance on typesetting a LaTeX document in the
Chakma language using the Chakma script.

## Support with `ini` locale file

Here is a minimal sample file with `chakma` as the main language, with `luatex`.

```tex
\documentclass[chakma]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}[Renderer=Harfbuzz]{Noto Sans Chakma}

% The next 2 lines make sure the Latin script is displayed.
\babelprovide[onchar=fonts letters]{english}
\babelfont[english]{rm}{NewComputerModern10}

\begin{document}

Local name $=$ 𑄌𑄋𑄴𑄟𑄳𑄦

Today $=$ \today

\end{document}
```

![](../media/locale-chakma.png)

You may need download the font or replace it with another one in your
system.