# Italian

This page offers basic guidance on typesetting a LaTeX document in the
Italian language using the Latin script.

## Support with the traditional way (`ldf`)

The Italian language is supported in `babel` in the ‘classical’ way
based on a `ldf` file. See [babel-italian](https://ctan.org/pkg/babel-italian)
for further details.

## Support with `ini` locale file

Here is a minimal sample file with `italian` as the main language, with `luatex`.

```tex
\documentclass[italian]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ italiano

Chapter $=$ \chaptername

Today $=$ \today

\end{document}
```

![](../media/locale-italian.png)