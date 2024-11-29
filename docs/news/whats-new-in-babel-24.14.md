# What's new in babel 24.14

**Draft. Announcement.**

<span style="color:red;">⚠</span> **This release introduces a couple of
potentially breaking changes.**

## Default renderer with `\babelfont`

`Harfbuzz` is now the default renderer in most scripts, except those of
the ‘Greek family’, including Latin, Cyrillic, Armenian and Georgian.
(CJK is under study.) In the rest of scripts, if there is any change in
the result it should be for the better. This is particularly true for
the Indic scripts (Devanagari, Malayalam, Bangla, Tibetan, etc.).

There are two reasons to keep the default `Node` renderer in
those alphabetic scripts:
* Ligatures, kerning and the like are essential typographical features,
  and therefore the `luaotfload` tools to customize them should be
  directly available.
* There are some issues in the Harfbuzz renderer with relation to
  hyphenation. For example, many points are dropped if the font is
  heavily kerned, and explicit hyphens are mapped to the wrong Unicode
  character.

Note this feature applies to `\babelfont`. The standard calls to
`fontspec` are not touched, and `\defaultfontfeatures` is still fully
functional and it can be used to override the renderer chosen by
`babel`.

[There is an exception. For compatibity issues, Arabic, Hebrew and
Syriac with `bidi-r` are still `Node`.]

## `import` in lazy loading

Lazy loading now has an implicit ‘import’. This is a requested feature,
and currently there are no real reasons for not to set date and
captions, for example. There were some restrictions in `pdftex`
related to font encodings, but they were lifted a few months ago.

## Changes in locale files

* **French.** Fix spacing with `punctuation.space` and successive ‘!’ and
  ‘?’. (Thanks to Daniel Flipo.)

* **Japanese.** As explained in... , there were some pending tasks in a
  few languages related to transform variables. Now the `japanese`
  locale inserts the correct space with `linebreak.strict`, which is
  controlled with `small.natural`, `small.plus` and `small.minus`. They
  are set when the transform is activated to the `intraspace` values.
  In addition, the penalty, by default 10000, can be reset with
  `small.penalty`.

