# Avestan

This page offers basic guidance on typesetting a LaTeX document in the
Avestan language using the Avestan script.

## Support with `ini` locale file

Here is a minimal sample file with `avestan` as the main language, with `luatex`.

```tex
\documentclass[avestan]{article}

\usepackage[provide=*,bidi=basic]{babel}

\babelfont{rm}[Renderer=Harfbuzz]{Noto Sans Avestan}

% The next 2 lines make sure the Latin script is displayed.
\babelprovide[onchar=fonts letters]{english}
\babelfont[english]{rm}{NewComputerModern10}

\begin{document}

Local name $=$ 𐬎𐬞𐬀𐬯𐬙𐬀𐬎𐬎𐬀𐬐𐬀𐬉𐬥𐬀

\end{document}
```

![](../media/locale-avestan.png)

You may need download the font or replace it with another one in your
system.