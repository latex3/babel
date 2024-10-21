# Croatian

This page offers basic guidance on typesetting a LaTeX document in the
Croatian language using the Latin script.

## Support with the traditional way (`ldf`)

The Croatian language is supported in `babel` in the ‘classical’ way
based on a `ldf` file. See [babel-croatian](https://ctan.org/pkg/babel-croatian)
for further details.

## Support with `ini` locale file

Here is a minimal sample file with `croatian` as the main language, with `luatex`.

```tex
\documentclass[croatian]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ hrvatski

Chapter $=$ \chaptername

Today $=$ \today

\end{document}
```

![](../media/locale-croatian.png)