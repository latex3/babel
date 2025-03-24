# Lepcha

<blockquote>
  <p><em>Improve this page! Feel free to draft a pull request <a href="https://github.com/latex3/babel/tree/docs/docs">on GitHub</a>.</em></p>
</blockquote>

This page offers basic guidance on typesetting a LaTeX document in the
Lepcha language using the Lepcha script.

## Support with `ini` locale file

Here is a minimal sample file with `lepcha` as the main language
(assuming `luatex`, which is the recommended engine, and `babel` ≥25.2,
although it may work with previous versions).

```tex
\documentclass[lepcha]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}{Noto Sans Lepcha}

\begin{document}

Local name $=$ ᰛᰩᰵᰛᰧᰵᰶ

\end{document}
```

![](../media/locale-lepcha.png)
You may need download the font or replace it with another one in your
system.

## Contribute

If you are a native speaker or have expertise in this language, you can
contribute, make suggestions or request enhancements by submitting a
pull request, opening an issue, or contacting the Babel maintainer with
the link above.