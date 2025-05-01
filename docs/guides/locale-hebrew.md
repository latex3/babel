# Hebrew

<blockquote>
  <p><em>Improve this page! Feel free to draft a pull request <a
  href="https://github.com/latex3/babel/tree/docs/docs">on GitHub</a>.<br>
  <a
  href="https://www.google.com/search?q=site%3Alatex3.github.io%2Fbabel+Hebrew">Search this site for more on Hebrew</a>.</em></p>
</blockquote>

The Hebrew language is available for `pdftex`, `xetex`, and `luatex`, but the
preferred engine is the latter, because of its unique features for
bidirectional texts, not requiring explicit mark up.

<iframe width="560" height="315" src="https://www.youtube.com/embed/eWZhWOzrVTA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

There is a complete example (with a table, a footnote, maths, etc.) in the repository
([tex](https://github.com/latex3/babel/blob/main/samples/lua-hebrew.tex), 
[pdf](https://github.com/latex3/babel/blob/main/samples/lua-hebrew.pdf)).

![](../media/lua-hebrew.jpg)

## Justification

Hebrew justification frequently utilizes subtle variations in
the spacing between individual letters within words. This can be achieved
by inserting tiny amounts of extra space between letter combinations.

The transform `justification.interletter` in all locales in the Hebrew
script (Hebrew, Ancient Hebrew, Ladino, Yiddish) activates this kind of
justification.

See [What’s new in babel 25.8](https://latex3.github.io/babel/news/whats-new-in-babel-25.8.html)



## `pdflatex`

For `pdftex` you may need to install separately the [`culmus`
package](https://www.guyrutenberg.com/culmus-latex/), which is absent
in some TeX distributions. It’s available in Overleaf and, as
of August 2023, included in TeXLive.

## Useful links

* [Tables with Hebrew text using
  babel](https://tex.stackexchange.com/questions/558939/tables-with-hebrew-text-using-babel)
* [Hebrew name
  typesetting](https://tex.stackexchange.com/a/581010/5735)
* [Help getting started with Hebrew in babel](https://tex.stackexchange.com/questions/138992/help-getting-started-with-hebrew-in-babel/611604#611604)
* [Why aren’t dageshes aligned in Hebrew in LuaLaTex?](https://tex.stackexchange.com/questions/605202/why-arent-dageshes-aligned-in-hebrew-in-lualatex)
* [Writing Biblical Hebrew texts with different coloring for consonants, vowel and accent signs](https://tex.stackexchange.com/a/632620/5735)

