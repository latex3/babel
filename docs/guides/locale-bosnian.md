# Bosnian

This page offers basic guidance on typesetting a LaTeX document in the
Bosnian language using the Latin script.

## Support with the traditional way (`ldf`)

The Bosnian language is supported in `babel` in the ‘classical’ way
based on a `ldf` file. See [babel-bosnian](https://ctan.org/pkg/babel-bosnian)
for further details.

## Support with `ini` locale file

Here is a minimal sample file with `bosnian` as the main language, with `luatex`.

```tex
\documentclass[bosnian]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ bosanski

Chapter $=$ \chaptername

Today $=$ \today

\end{document}
```

![](../media/locale-bosnian.png)