# Lower Sorbian

This page offers basic guidance on typesetting a LaTeX document in the
Lower Sorbian language using the Latin script.

## Support with the traditional way (`ldf`)

The Lower Sorbian language is supported in `babel` in the ‘classical’ way
based on a `ldf` file.

## Support with `ini` locale file

Here is a minimal sample file with `lowersorbian` as the main language, with `luatex`.

```tex
\documentclass[lowersorbian]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ dolnoserbšćina

Chapter $=$ \chaptername

Today $=$ \today

\end{document}
```

![](../media/locale-lowersorbian.png)