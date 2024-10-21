# Serbian

This page offers basic guidance on typesetting a LaTeX document in the
Serbian language using the Cyrillic script.

## Support with the traditional way (`ldf`)

The Serbian language is supported in `babel` in the ‘classical’ way
based on a `ldf` file. See [babel-serbian](https://ctan.org/pkg/babel-serbian)
for further details.

## Support with `ini` locale file

Here is a minimal sample file with `serbian` as the main language, with `luatex`.

```tex
\documentclass[serbian]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}{NewComputerModern10}

\begin{document}

Local name $=$ српски

Chapter $=$ \chaptername

Today $=$ \today

\end{document}
```

![](../media/locale-serbian.png)