# Romanian

This page offers basic guidance on typesetting a LaTeX document in the
Romanian language using the Latin script.

## Support with the traditional way (`ldf`)

The Romanian language is supported in `babel` in the ‘classical’ way
based on a `ldf` file. See [babel-romanian](https://ctan.org/pkg/babel-romanian)
for further details.

## Support with `ini` locale file

Here is a minimal sample file with `romanian` as the main language, with `luatex`.

```tex
\documentclass[romanian]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ română

Chapter $=$ \chaptername

Today $=$ \today

\end{document}
```

![](../media/locale-romanian.png)