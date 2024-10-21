# Russian

This page offers basic guidance on typesetting a LaTeX document in the
Russian language using the Cyrillic script.

## Support with the traditional way (`ldf`)

The Russian language is supported in `babel` in the ‘classical’ way
based on a `ldf` file. See [babel-russian](https://ctan.org/pkg/babel-russian)
for further details.

## Support with `ini` locale file

Here is a minimal sample file with `russian` as the main language, with `luatex`.

```tex
\documentclass[russian]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}{NewComputerModern10}

\begin{document}

Local name $=$ русский

Chapter $=$ \chaptername

Today $=$ \today

\end{document}
```

![](../media/locale-russian.png)