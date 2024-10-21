# Lithuanian

This page offers basic guidance on typesetting a LaTeX document in the
Lithuanian language using the Latin script.

## Support with the traditional way (`ldf`)

The Lithuanian language is supported in `babel` in the ‘classical’ way
based on a `ldf` file. See [babel-lithuanian](https://ctan.org/pkg/babel-lithuanian)
for further details.

## Support with `ini` locale file

Here is a minimal sample file with `lithuanian` as the main language, with `luatex`.

```tex
\documentclass[lithuanian]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ lietuvių

Chapter $=$ \chaptername

Today $=$ \today

\end{document}
```

![](../media/locale-lithuanian.png)