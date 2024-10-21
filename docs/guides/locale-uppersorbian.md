# Upper Sorbian

This page offers basic guidance on typesetting a LaTeX document in the
Upper Sorbian language using the Latin script.

## Support with the traditional way (`ldf`)

The Upper Sorbian language is supported in `babel` in the ‘classical’ way
based on a `ldf` file.

## Support with `ini` locale file

Here is a minimal sample file with `uppersorbian` as the main language, with `luatex`.

```tex
\documentclass[uppersorbian]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ hornjoserbšćina

Chapter $=$ \chaptername

Today $=$ \today

\end{document}
```

![](../media/locale-uppersorbian.png)