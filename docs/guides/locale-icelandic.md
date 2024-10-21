# Icelandic

This page offers basic guidance on typesetting a LaTeX document in the
Icelandic language using the Latin script.

## Support with the traditional way (`ldf`)

The Icelandic language is supported in `babel` in the ‘classical’ way
based on a `ldf` file. See [babel-icelandic](https://ctan.org/pkg/babel-icelandic)
for further details.

## Support with `ini` locale file

Here is a minimal sample file with `icelandic` as the main language, with `luatex`.

```tex
\documentclass[icelandic]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ íslenska

Chapter $=$ \chaptername

Today $=$ \today

\end{document}
```

![](../media/locale-icelandic.png)