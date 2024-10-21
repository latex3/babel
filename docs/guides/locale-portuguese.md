# Portuguese

This page offers basic guidance on typesetting a LaTeX document in the
Portuguese language using the Latin script.

## Support with the traditional way (`ldf`)

The Portuguese language is supported in `babel` in the ‘classical’ way
based on a `ldf` file.

## Support with `ini` locale file

Here is a minimal sample file with `portuguese` as the main language, with `luatex`.

```tex
\documentclass[portuguese]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ português

Chapter $=$ \chaptername

Today $=$ \today

\end{document}
```

![](../media/locale-portuguese.png)