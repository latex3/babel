# Basque

This page offers basic guidance on typesetting a LaTeX document in the
Basque language using the Latin script.

## Support with the traditional way (`ldf`)

The Basque language is supported in `babel` in the ‘classical’ way
based on a `ldf` file. See [babel-basque](https://ctan.org/pkg/babel-basque)
for further details.

## Support with `ini` locale file

Here is a minimal sample file with `basque` as the main language, with `luatex`.

```tex
\documentclass[basque]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ euskara

Chapter $=$ \chaptername

Today $=$ \today

\end{document}
```

![](../media/locale-basque.png)