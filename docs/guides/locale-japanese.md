# Japanese

This page offers basic guidance on typesetting a LaTeX document in the
Japanese language using the Japanese script.

## Support with the traditional way (`ldf`)

The Japanese language is supported in `babel` in the ‘classical’ way
based on a `ldf` file. See [babel-japanese](https://ctan.org/pkg/babel-japanese)
for further details.

## Support with `ini` locale file

Here is a minimal sample file with `japanese` as the main language, with `luatex`.

```tex
\documentclass[japanese]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}[Renderer=Harfbuzz]{Harano Aji Mincho}

\begin{document}

Local name $=$ 日本語

Chapter $=$ \chaptername

Today $=$ \today

\end{document}
```

![](../media/locale-japanese.png)