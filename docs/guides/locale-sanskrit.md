# Sanskrit

<blockquote>
  <p><em>Improve this page! Feel free to draft a pull request <a href="https://github.com/latex3/babel/tree/docs/docs">on GitHub</a>.<br>
  <a href="https://www.google.com/search?q=site%3Alatex3.github.io%2Fbabel+Sanskrit">Search this site for more on Sanskrit</a>.</em></p>
</blockquote>

This page offers basic guidance on typesetting a LaTeX document in the
Sanskrit language using the Devanagari script.

## Support with `ini` locale file

Here is a minimal sample file with `sanskrit` as the main language
(assuming `luatex`, which is the recommended engine, and `babel` ≥24.14,
although it may work with previous versions).

```tex
\documentclass[sanskrit]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}{Sanskrit 2020} % free font from https://sourceforge.net/projects/advaita-sharada-font/files/Devanagari/
\begin{document}
    
    Digits $=$ \localenumeral{digits}{0123456789}
    
    धर्मक्षेत्रे कुरुक्षेत्रे समवेता युयुत्सव:   ||
    
\end{document}
```
<img width="394" height="139" alt="image" src="https://github.com/user-attachments/assets/ba8c261f-6328-447d-aac2-0f51497060aa" />

Compilation to PDF performed with XeLaTeX.

## Contribute

If you are a native speaker or have expertise in this language, you can
contribute, make suggestion or request an enhancement by submitting a
pull request, opening an issue, or contacting the Babel maintainer with
the link above.
