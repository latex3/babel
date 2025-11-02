# Which method and font for which language

> *Improve this page! Feel free to draft a pull request [on GitHub](https://github.com/latex3/babel/tree/docs/docs)*.

**Index** [Fonts](#fonts) • [Loading the language](#loading-the-language) 

As explained in the manual, there are currently two methods to load a
language. With release 25.14, [`babel` selects the recommended
one](https://latex3.github.io/babel/news/whats-new-in-babel-25.14.html).
However, you can find of interest the basic criteria, especially if you
are still using an old version, which is reproduced
[below](#loading-the-language) .

There are pages on specific locales in the menu above and
[here](https://latex3.github.io/babel/guides/index-locale.html) (but
note they are still using `provide=*`, which is often unnecessary).

See also the [examples
here](https://github.com/latex3/babel/tree/main/samples) for languages
like Arabic, Thai, Hebrew, Polytonic Greek, Japanese, Syriac and
Malayalam, among others.

_I'd like to thank Loren Davis for his help in preparing this page,
including the list of additional fonts._

------------------
## Fonts

With non-Latin scripts, you need to select another font, which can be
done with `\babelfont`.

If compatibility is not a concern, remember currently the most
important systems (Windows, Mac, Linux) come with many fonts. Even if
they are not installed by default, there are options in the system
settings to do it.

With `luatex` and in versions
≥[24.14](https://latex3.github.io/babel/news/whats-new-in-babel-24.14.html),
the default renderer in `\babelfont` is the default one in Latin,
Cyrillic, Greek and scripts of the same family. In the rest of scripts,
like Southeast Asian ones and Arabic, the default renderer is Harfbuzz.

#### TeXLive

Here are some basic fonts included in TeXLive. This section is not
meant as a font reference, but as a quick guide for a language to work
with a more or less standard font. I've found no fonts for Telugu or
Kannada.

If you know the codepoint of a character in the script you need, you
can find fonts containing it with
[`albatross`](https://ctan.org/pkg/albatross?lang=en) (requires Java)
or with something like `fc-list :charset=1033C family` in the commands
line (in this case, a Gothic character, the script required by the
`gothic` language).

| Font(s) | Languages / Scripts | Notes |
| --- | --- | --- |
| IPAexMincho, IPAexGothic | Japanese | |
| Baekmuk Gulim, Baekmuk Batang, Baekmuk Dotum | Korean | |
| FreeSerif | Multilingual, including Greek, Cyrillic, Coptic, Arabic, Hebrew, many (but not all) Brahmi scripts (Thai, Devanagari, Bengali, Tamil, Malayalam, etc.), Amharic, Georgian, Cherokee, Armenian. | A comprehensive Times-like, although with some oddities. |
| Amiri | Arabic | |
| ALM Fixed | Arabic | A CM-like monospaced font.
| CMU Serif, CMU Sans Serif, CMU Typewriter Text | Cyrillic, Greek | A CM-like family.
| NewComputerModern | Cyrillic, Greek, Hebrew, Cherokee | Another, more modern, CM-like family. It doesn’t support African orthographies. 
| Padauk | Myanmar | |
| Shobhika | Devanagari | With an excellent coverage of Vedic accents, Latin transliteration for Sanskrit, mathematical and technical symbols, and Cyrillic.
| Rachana | Malayalam | It was the first Unicode font to support traditional orthography. This is the version by smc.org.in. There are several other fonts floating around under the name “Rachana,” and some of them do not work.  Manjari is another popular font suitable for these body text, designed on the same theoretical principles as Inconsolata.
| FandolSong, FandolHei, FandolKai, FandolFang | Yi, Chinese | |
| David CLM, Miriam CLM, Miriam Mono CLM | Hebrew | Free implementations of the most common Hebrew serif, sans-serif and monospace fonts.  If you need cantillation marks for liturgical texts, Culmus also has a Taamey David.  There are many different versions of font faces.
| DejaVu Sans | Greek, Cyrillic, Armenian, Hebrew, Arabic, Lao, Georgian | Also Canadian Aboriginal, Ogham.
| Noto | Greek, Cyrillic | A large family, but TeXLive includes only the fonts for these two scripts (and emojis).
| Junicode | Runic | Also Medieval and Ancient Latin script.

### Additional fonts

There are also some fine fonts out there, but you must install they because they aren't bundled with TeXLive. This list, of course, is just
a very small selection. As a complementary source, see the [Font
Lister](https://r12a.github.io/scripts/fontlist/index.html).

| Font(s) | Languages / Scripts | Notes |
| --- | --- | --- |
| [Noto](https://notofonts.github.io/) | Multilingual | This family has a very comprehensive coverage and come in many variations of weight and width to match your other fonts. However, some fonts don’t cover the ASCII range. You can see how to combine Noto fonts at the end of the video [LaTeX – Multilingual Unicode strings](https://www.youtube.com/watch?v=jWGmYZsNiYA). There are 4 huge fonts covering many languages: Noto Serif Living, Noto Sans Living, Noto Serif Historical, Noto Sans Historical (but only the Regular variants).
| Babelstone Han | Chinese | It supports both Simplified and Traditional Chinese and has an especially comprehensive selection of traditional Chinese characters.
| Abyssinica SIL | Abyssinica SIL |
| Nirmala UI | Indic scripts | A Windows font with 14 scripts: Bangla, Chakma, Devanagari, Gujarati, Gurmukhi, Kannada, Malayalam, Meitei Mayek, Ol Chiki, Odia, Sinhala, Sora Sompeng, Tamil, Telugu.
| Segoe UI Historic | Ancient scripts | A Windows font with 25 scripts: Imperial Aramaic, Brahmi, Carian, Cypriot, Egyptian hieroglyphs, Glagolitic, Gothic, Old Italic, Kharoshthi, Lycian, Lydian, Meroitic Cursive, Ogham, Orkhon, Inscriptional Pahlavi, Phoenician, Inscriptional Parthian, Runic, Old South Arabian, Shavian, Syriac, Ugaritic, Old Persian, Sumero- Akkadian Cuneiform.
| Lohit | Indic scripts | A set of Linux fonts covering Assamese, Bengali, Gujarati, Hindi, Kannada, Malayalam, Marathi, Odia, Punjabi, Tamil, and Telugu.

You may also want to have a look at some articles on tex.textackexchange on [Arabic](https://tex.stackexchange.com/questions/314202/overview-of-arabic-fonts-available-for-latex-xetex).

-------------------------

## Loading the language

There are two ways to load a language, which use different definition files. At first this duality may seem inconvenient, but this way the transition to a more modern system where locales can be easily defined and interoperate can be done smoothly.

The first one is:
```tex
\usepackage[italian]{babel}
```
It will load the old good Italian language definition file. This procedure is the **preferred one in most languages where an `ldf` exists**, but there are exceptions (for example, Arabic and Hebrew). In general, you should do this for **European languages written in Latin and Cyrillic** scripts, as well as for **Vietnamese**. For **Greek**, it may depend on your needs, and very often both methods will be fine. If you want modern and ancient Greek at the same time, the next one is usually better.

The second method is:
```tex
\usepackage[thai, provide=*]{babel}
```
(With ≥25-14, you can omit `provide=*`.)
This will load data from an `ini` file. This is usually the correct
method for languages written in some of the 40-something **non-European
scripts**, currently supported by `babel`, like
[Thai](https://latex3.github.io/babel/guides/locale-thai.html),
[Hindi](https://latex3.github.io/babel/guides/locale-hindi.html),
[Sanskrit](https://latex3.github.io/babel/guides/locale-sanskrit.html),
[Marathi](https://latex3.github.io/babel/guides/locale-marathi.html),
[Malayalam](https://latex3.github.io/babel/guides/locale-malayalam.html),
[Lao](https://latex3.github.io/babel/guides/locale-lao.html),
[Khmer](https://latex3.github.io/babel/guides/locale-khmer.html),
[Bangla (Bengali)](https://latex3.github.io/babel/guides/locale-bangla.html),
[Gujarati](https://latex3.github.io/babel/guides/locale-gujarati.html),
[Telugu](https://latex3.github.io/babel/guides/locale-telugu.html),
[Kannada](https://latex3.github.io/babel/guides/locale-kannada.html),
[Sinhala](https://latex3.github.io/babel/guides/locale-sinhala.html),
[Tamil](https://latex3.github.io/babel/guides/locale-tamil.html),
[Amharic](https://latex3.github.io/babel/guides/locale-amharic.html),
or [Burmese](https://latex3.github.io/babel/guides/locale-burmese.html).

In short **simple CJK** texts,
this is also the preferred method, but in more complex ones you should
resort to some CKJ framework like
[luatexja](https://ctan.org/pkg/luatexja),
[xeCJK](https://ctan.org/pkg/xecjk), [CTeX](https://ctan.org/pkg/ctex),
[kotex](https://mirrors.ctan.org/language/korean/kotex-utf/doc/kotex-utf-doc.pdf),
and the like.

Some languages may require additional options. Examples are
[Arabic](https://latex3.github.io/babel/guides/locale-arabic.html),
[Hebrew](https://latex3.github.io/babel/guides/locale-hebrew.html),
and [Syriac](https://latex3.github.io/babel/guides/locale-syriac.html). So, with LuaTeX:
```tex
\usepackage[arabic, bidi=basic, provide=*]{babel}
```
With XeTeX:
```tex
\usepackage[arabic, bidi=bidi-r, provide=*]{babel}
```
(With ≥25-14, you can omit `provide=*`.)
