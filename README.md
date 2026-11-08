# rex-tmux-bindings

tmux-style keyboard shortcuts for [Rex](https://www.superlogical.com/rex).

Covers the bindings tmux users reach for most: switching and jumping to tabs by
number, renaming tabs and sessions, splitting panes, and zooming.

## Installation

Clone into your Rex config directory:

```sh
git clone https://github.com/loremipson/rex-tmux-bindings ~/.config/rex/rex-tmux-bindings
```

Then load it from `init.lua`:

```lua
-- ~/.config/rex/init.lua
require("rex-tmux-bindings").setup()
```

To use a custom prefix (default is `ctrl+b`, like tmux):

```lua
require("rex-tmux-bindings").setup({ prefix = "ctrl+a" })
```

Reload your config after saving:

```sh
rex config reload
```

## Upgrading

```sh
git -C ~/.config/rex/rex-tmux-bindings pull
rex config reload
```

## Notes

The `&`, `$`, `%`, and `"` bindings are defined as `shift+7`, `shift+4`,
`shift+5`, and `shift+'`, which assumes a US keyboard layout. On other
layouts those keys will be different.

## Bindings

| Key              | Action                  |
| ---------------- | ----------------------- |
| `prefix+c`       | New tab                 |
| `prefix+,`       | Rename tab              |
| `prefix+n`       | Next tab                |
| `prefix+p`       | Previous tab            |
| `prefix+1`...`9` | Go to tab by number     |
| `prefix+&`       | Close tab               |
| `prefix+$`       | Rename session          |
| `prefix+%`       | Split pane right        |
| `prefix+"`       | Split pane down         |
| `prefix+x`       | Close pane              |
| `prefix+z`       | Zoom pane               |
| `prefix+prefix`  | Send prefix to terminal |
