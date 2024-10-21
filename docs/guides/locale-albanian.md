# Albanian

This page offers basic guidance on typesetting a LaTeX document in the
Albanian language using the Latin script.

## Support with the traditional way (`ldf`)

The Albanian language is supported in `babel` in the ‘classical’ way
based on a `ldf` file. See [babel-albanian](https://ctan.org/pkg/babel-albanian)
for further details.

## Support with `ini` locale file

Here is a minimal sample file with `albanian` as the main language, with `luatex`.

```tex
\documentclass[albanian]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ shqip

Chapter $=$ \chaptername

Today $=$ \today

\end{document}
```

![](../media/locale-albanian.png)