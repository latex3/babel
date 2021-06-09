# Which method for which language

_Document under development. Only XeTeX and LuaTeX._ (I like to thank Loren Davis for his help in preparing this page, including the list of additional fonts.)

**Index** [Loading the language](#loading-the-language) • [Fonts](#fonts) • [Examples](#examples)

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
This will load data from an `ini` file. This is usually the correct method for languages written in **non-European scripts**, like Thai, Hindi, Sanskrit, Marathi, Malayalam, Lao, Khemer, Bengali, Gujarati, Telugu, Kannada, Sinhala, Tamil, Amharic, or Burmese. In short **simple CJK** texts, this is also the preferred method, but in more complex ones you should resort to some CKJ framework like luatexja, xeCJK, kotex, and the like.

Some languages may require additional options. Examples are Arabic, Hebrew and Syriac. With LuaTeX:
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
| NewCM | Cyrillic, Greek, Hebrew, Cherokee | Another, more modern, CM-like family.
| Padauk | Myanmar | |
| FandolSong, FandolHei, FandolKai, FandolFang | Yi, Chinese | |
| DejaVu Sans | Greek, Cyrillic, Armenian, Hebrew, Arabic, Lao, Georgian | Also Canadian Aboriginal, Ogham.
| Noto | Greek, Cyrillic | A large family, but TeX Live includes only the fonts for these two scripts (and emojis).
| Junicode | Runic | Also Medieval and Ancient Latin script.

#### Additional fonts

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

----------------------

## Examples

Some examples follow (well, not yet). Remember there are  [examples here](https://github.com/latex3/babel/tree/master/samples).

### Arabic

Recommended basic settings for a monolingual Arabic document in `luatex` (please, note your browser might not be rendering correctly the source code):
```tex
\documentclass{article}

\usepackage[arabic, provide=*, bidi=basic, layout=counters.tabular]{babel}
\babelfont{rm}[Renderer=Harfbuzz]{FreeSerif}

\begin{document}

الموسيقى أو الموسيقا هي فن مؤلف من الأصوات والسكوت عبر فترة زمنية،
ويعتقد العلماء بأن كلمة الموسيقى يونانية الأصل، وقد كانت تعني سابقا
الفنون عموما غير أنها أصبحت فيما بعد تطلق على لغة الألحان فقط.

\end{document}
```
![](https://user-images.githubusercontent.com/1314536/97981471-a6943300-1dd2-11eb-8f13-3fb5c20dc355.png)
### (...)

-------------------------

*Under development*

Monolingual documents

| Language | Method | Font | Additional package options (lua) | xe | Notes |
| --- | --- | --- | --- | --- | --- |
| Arabic | provide | Renderer=Harfbuzz | bidi=basic, layout=counters.tabular | bidi=bidi-r | |
| German | | | | | |
| Hebrew | provide | Renderer=Harfbuzz | bidi=basic, layout=tabular | bidi=bidi-r | |
| Hindi | provide | Renderer=Harfbuzz | | |
| Portuguese | | | | |
| Swedish | | | | |
| Thai | provide | Renderer=Harfbuzz | | |



