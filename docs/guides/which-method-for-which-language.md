# Which method for which language

Since currently there are two methods to load a language, here is a short
explanation on how to do it, with info about basic fonts, so that you
can setup quickly a document. There are also pages on specific locales
in the menu above

See also the [examples
here](https://github.com/latex3/babel/tree/main/samples) for languages
like Arabic, Thai, Hebrew, Polytonic Greek, Japanese, and Malayalam,
among others.

_I'd like to thank Loren Davis for his help in preparing this page,
including the list of additional fonts._

**Index** [Loading the language](#loading-the-language) • [Fonts](#fonts) 

--------------------------

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
This will load data from an `ini` file. This is usually the correct
method for languages written in some of the 30-something **non-European
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

--------------
## Fonts

With non-Latin scripts, you need to select another font, which can be done with `\babelfont`.

If compatibility is not a concern, remember currently the most important systems (Windows, Mac, Linux) come with many fonts. Even if they are not installed by default, there are options in the system settings to do it. 

With `luatex` stick to the default renderer in Latin, Cyrillic and Greek scripts wherever possible. On the other hand, Southeast Asian scripts are best rendered with Harfbuzz, as well as Arabic. CKJ is usually fine with either renderer.

#### TeXLive

Here are some basic fonts included in TeXLive. This section is not meant as a font reference, but as a quick guide for a language to work with a more or less standard font. I've found no fonts for Telugu or Kannada.

| Font(s) | Languages / Scripts | Notes |
| --- | --- | --- |
| IPAexMincho, IPAexGothic | Japanese | |
| Baekmuk Gulim, Baekmuk Batang, Baekmuk Dotum | Korean | |
| FreeSerif | Multilingual, including Greek, Cyrillic, Coptic, Arabic, Hebrew, many (but not all) Brahmi scripts (Thai, Devanagari, Bengali, Tamil, Malayalam, etc.), Amharic, Georgian, Cherokee, Armenian. | |
| Amiri | Arabic | |
| ALM Fixed | Arabic | A CM-like monospaced font.
| CMU Serif, CMU Sans Serif, CMU Typewriter Text | Cyrillic, Greek | A CM-like family.
| NewCM | Cyrillic, Greek, Hebrew, Cherokee | Another, more modern, CM-like family. It doesn’t support African orthographies. 
| Padauk | Myanmar | |
| FandolSong, FandolHei, FandolKai, FandolFang | Yi, Chinese | |
| DejaVu Sans | Greek, Cyrillic, Armenian, Hebrew, Arabic, Lao, Georgian | Also Canadian Aboriginal, Ogham.
| Noto | Greek, Cyrillic | A large family, but TeX Live includes only the fonts for these two scripts (and emojis).
| Junicode | Runic | Also Medieval and Ancient Latin script.

### Additional fonts

There are also some fine fonts out there, but you must install them because they aren't bundled with TeXLive. This list, of course, is just a very small selection.

| Font(s) | Languages / Scripts | Notes |
| --- | --- | --- |
| Noto | Multilingual | This family has a very comprehensive coverage and come in many variations of weight and width to match your other fonts.
| David CLM, Miriam CLM, Miriam Mono CLM | Hebrew | Free implementations of the most common Hebrew serif, sans-serif and monospace fonts.  If you need cantillation marks for liturgical texts, Culmus also has a Taamey David.  There are many different versions of font faces.
| Babelstone Han | Chinese | It supports both Simplified and Traditional Chinese and has an especially comprehensive selection of traditional Chinese characters.
| Rachana | Malayalam | It was the first Unicode font to support traditional orthography. This is the version by smc.org.in. There are several other fonts floating around under the name “Rachana,” and some of them do not work.  Manjari is another popular font suitable for these body text, designed on the same theoretical principles as Inconsolata.
| Abyssinica SIL | Abyssinica SIL |
| Shobhika | Sanskrikt | With an excellent coverage of Vedic accents, Latin transliteration, mathematical and technical symbols, and Cyrillic.

You may also want to have a look at some articles on tex.textackexchange on [Arabic](https://tex.stackexchange.com/questions/314202/overview-of-arabic-fonts-available-for-latex-xetex)

-------------------------

## Recommended options for monolingual documents

| Language | Method | Font | Additional package options (lua) | xe | Notes |
| --- | --- | --- | --- | --- | --- |
| Arabic | provide | Renderer=Harfbuzz | bidi=basic, layout=counters.tabular | bidi=bidi-r | |
| German | | | | | |
| Hebrew | provide | Renderer=Harfbuzz | bidi=basic, layout=tabular | bidi=bidi-r | |
| Hindi | provide | Renderer=Harfbuzz | | |
| Portuguese | | | | |
| Swedish | | | | |
| Thai | provide | Renderer=Harfbuzz | | |



