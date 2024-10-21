# Bulgarian

This page offers basic guidance on typesetting a LaTeX document in the
Bulgarian language using the Cyrillic script.

## Support with the traditional way (`ldf`)

The Bulgarian language is supported in `babel` in the ‘classical’ way
based on a `ldf` file. See [babel-bulgarian](https://ctan.org/pkg/babel-bulgarian)
for further details.

## Support with `ini` locale file

Here is a minimal sample file with `bulgarian` as the main language, with `luatex`.

```tex
\documentclass[bulgarian]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}{NewComputerModern10}

\begin{document}

Local name $=$ български

Chapter $=$ \chaptername

Today $=$ \today

\end{document}
```

![](../media/locale-bulgarian.png)