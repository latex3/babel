# What's new in babel 24.13

**Draft. Announcement.**

(The code is not yet avaliable.)

This release introduces a couple of potentially breaking changes.

## Default renderer with `\babelfont`

`Harfbuzz` is now the default renderer in most scripts, except those of
the ‘Greek family’, including Latin, Cyrillic, Armenian and Georgian.
(CJK is under study.) In the rest of scripts, if there is any change in
the result it should be for the better.

There are two reasons to keep the default `Node` renderer in
those alphabetic scripts:
* Ligatures, kerning and the like are essential typographical features,
  and therefore the `luaotfload` tools to customize them should be
  directly available.
* There are some issues in the Harfbuzz renderer with relation to
  hyphenation. For example, many points are dropped if the font is
  heavily kerned, and explicit hyphens are mapped to the wrong Unicode
  character.

For example,

Note this feature applies to `\babelfont`. The standard calls to
`fontspec` are not touched, and `\defaultfontfeatures` is still fully
functional and it can be used to override the renderer chosen by
`babel`.

## `import` in lazy loading

Lazy loading now has an implicit ‘import’. This is a requested feature,
and currently there are no real reasons for not to set date and
camptions, for example. There were some restrictions in the preliminary
versions of lazy loading, which they were lifted sometime ago.