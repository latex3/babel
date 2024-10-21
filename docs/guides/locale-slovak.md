# Slovak

This page offers basic guidance on typesetting a LaTeX document in the
Slovak language using the Latin script.

## Support with the traditional way (`ldf`)

The Slovak language is supported in `babel` in the ‘classical’ way
based on a `ldf` file. See [babel-slovak](https://ctan.org/pkg/babel-slovak)
for further details.

## Support with `ini` locale file

Here is a minimal sample file with `slovak` as the main language, with `luatex`.

```tex
\documentclass[slovak]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ slovenčina

Chapter $=$ \chaptername

Today $=$ \today

\end{document}
```

![](../media/locale-slovak.png)