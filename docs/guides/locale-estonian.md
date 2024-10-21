# Estonian

This page offers basic guidance on typesetting a LaTeX document in the
Estonian language using the Latin script.

## Support with the traditional way (`ldf`)

The Estonian language is supported in `babel` in the ‘classical’ way
based on a `ldf` file. See [babel-estonian](https://ctan.org/pkg/babel-estonian)
for further details.

## Support with `ini` locale file

Here is a minimal sample file with `estonian` as the main language, with `luatex`.

```tex
\documentclass[estonian]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ eesti

Chapter $=$ \chaptername

Today $=$ \today

\end{document}
```

![](../media/locale-estonian.png)