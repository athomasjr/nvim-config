# LazyVim Keymaps Reference

**Leader key:** `<Space>`
**Local Leader:** `\`

## Table of Contents
- [General](#general)
- [File Management](#file-management)
- [Text Editing](#text-editing)
- [Code Editing](#code-editing)
- [Search & Replace](#search--replace)
- [LSP (Language Server)](#lsp-language-server)
- [Git Integration](#git-integration)
- [Buffers & Windows](#buffers--windows)
- [Navigation & Movement](#navigation--movement)
- [Terminal](#terminal)
- [Harpoon (Quick File Access)](#harpoon-quick-file-access)
- [Yanky (Clipboard History)](#yanky-clipboard-history)
- [Mini Surround](#mini-surround)
- [Mini Diff](#mini-diff)
- [Diagnostics & Trouble](#diagnostics--trouble)
- [Formatting & Linting](#formatting--linting)
- [Miscellaneous](#miscellaneous)

---

## General

| Key | Mode | Action |
|-----|------|--------|
| `<leader>l` | n | Open Lazy plugin manager |
| `<leader>:` | n | Command history |
| `<leader><space>` | n | Find files (root dir) |
| `<leader>,` | n | Switch buffer |
| `<leader>/` | n | Grep (root dir) |
| `<Esc>` | n | Clear search highlight |
| `<leader>qq` | n | Quit all |
| `<leader>ui` | n | Inspect position (Treesitter) |
| `<leader>uI` | n | Inspect tree (Treesitter) |
| `<leader>L` | n | LazyVim changelog |

---

## File Management

| Key | Mode | Action |
|-----|------|--------|
| `<leader>fn` | n | New file |
| `<leader>ff` | n | Find files (root) |
| `<leader>fF` | n | Find files (cwd) |
| `<leader>fr` | n | Recent files |
| `<leader>fR` | n | Recent files (cwd) |
| `<leader>e` | n | Explorer (Neo-tree, root dir) |
| `<leader>E` | n | Explorer (Neo-tree, cwd) |
| `<leader>fe` | n | Explorer float (root dir) |
| `<leader>fE` | n | Explorer float (cwd) |
| `<C-s>` | i,x,n,s | Save file |
| `<leader>fs` | n | Save file |

---

## Text Editing

| Key | Mode | Action |
|-----|------|--------|
| `j` | n,x | Move down (also gj for wrapped) |
| `k` | n,x | Move up (also gk for wrapped) |
| `<A-j>` | n,i,v | Move line down |
| `<A-k>` | n,i,v | Move line up |
| `>` | v | Indent right |
| `<` | v | Indent left |
| `<leader>ur` | n | Toggle relative line numbers |
| `<leader>ul` | n | Toggle line numbers |
| `<leader>uw` | n | Toggle word wrap |
| `<leader>us` | n | Toggle spelling |
| `gcc` | n | Toggle line comment |
| `gc` | v | Toggle comment (selection) |
| `gco` | n | Add comment below |
| `gcO` | n | Add comment above |
| `u` | n | Undo |
| `<C-r>` | n | Redo |
| `p` | v | Paste (doesn't yank replaced text) |

---

## Code Editing

| Key | Mode | Action |
|-----|------|--------|
| `<leader>cf` | n,v | Format document/range |
| `<leader>cr` | n | Rename (LSP) |
| `<leader>cR` | n | Rename with inc-rename (live preview) |
| `<leader>ca` | n,v | Code action |
| `<leader>cA` | n | Source code action |
| `<leader>cd` | n | Line diagnostics |
| `<leader>cs` | n | Symbols (Aerial) |
| `]]` | n | Next reference |
| `[[` | n | Prev reference |

---

## Search & Replace

| Key | Mode | Action |
|-----|------|--------|
| `<leader>sg` | n | Grep (root) |
| `<leader>sG` | n | Grep (cwd) |
| `<leader>sw` | n | Grep word (root) |
| `<leader>sW` | n | Grep word (cwd) |
| `<leader>sw` | v | Grep selection (root) |
| `<leader>sW` | v | Grep selection (cwd) |
| `<leader>ss` | n | Goto symbol |
| `<leader>sS` | n | Goto symbol (workspace) |
| `<leader>s"` | n | Registers |
| `<leader>sa` | n | Auto commands |
| `<leader>sb` | n | Buffer |
| `<leader>sc` | n | Command history |
| `<leader>sC` | n | Commands |
| `<leader>sd` | n | Document diagnostics |
| `<leader>sD` | n | Workspace diagnostics |
| `<leader>sh` | n | Help pages |
| `<leader>sH` | n | Search highlight groups |
| `<leader>sk` | n | Keymaps |
| `<leader>sm` | n | Jump to marks |
| `<leader>sM` | n | Man pages |
| `<leader>so` | n | Options |
| `<leader>sR` | n | Resume last search |
| `n` | n,x,o | Next search result |
| `N` | n,x,o | Prev search result |

---

## LSP (Language Server)

| Key | Mode | Action |
|-----|------|--------|
| `gd` | n | Goto definition |
| `gr` | n | References |
| `gI` | n | Goto implementation |
| `gy` | n | Goto type definition |
| `gD` | n | Goto declaration |
| `K` | n | Hover documentation |
| `gK` | n | Signature help |
| `<C-k>` | i | Signature help |
| `<leader>cl` | n | LSP info |
| `]d` | n | Next diagnostic |
| `[d` | n | Prev diagnostic |
| `]e` | n | Next error |
| `[e` | n | Prev error |
| `]w` | n | Next warning |
| `[w` | n | Prev warning |

---

## Git Integration

| Key | Mode | Action |
|-----|------|--------|
| `<leader>gg` | n | Lazygit (root dir) |
| `<leader>gG` | n | Lazygit (cwd) |
| `<leader>gb` | n | Git blame line |
| `<leader>gB` | n | Git browse |
| `<leader>gf` | n | Lazygit current file history |
| `<leader>gl` | n | Lazygit log |
| `<leader>gL` | n | Lazygit log (cwd) |
| `]h` | n | Next hunk |
| `[h` | n | Prev hunk |
| `<leader>ghb` | n | Blame line |
| `<leader>ghd` | n | Diff this |
| `<leader>ghD` | n | Diff this ~ |
| `<leader>ghp` | n | Preview hunk |
| `<leader>ghr` | n | Reset hunk |
| `<leader>ghR` | n | Reset buffer |
| `<leader>ghs` | n | Stage hunk |
| `<leader>ghS` | n | Stage buffer |
| `<leader>ghu` | n | Undo stage hunk |
| `ih` | o,x | GitSigns select hunk (text object) |

---

## Buffers & Windows

| Key | Mode | Action |
|-----|------|--------|
| `<leader>bb` | n | Switch to other buffer |
| `<leader>bd` | n | Delete buffer |
| `<leader>bD` | n | Delete buffer and window |
| `<leader>bo` | n | Delete other buffers |
| `<S-h>` | n | Prev buffer |
| `<S-l>` | n | Next buffer |
| `[b` | n | Prev buffer |
| `]b` | n | Next buffer |
| `<leader>-` | n | Split window below |
| `<leader>\|` | n | Split window right |
| `<leader>wd` | n | Delete window |
| `<C-h>` | n | Go to left window |
| `<C-j>` | n | Go to lower window |
| `<C-k>` | n | Go to upper window |
| `<C-l>` | n | Go to right window |
| `<C-Up>` | n | Increase window height |
| `<C-Down>` | n | Decrease window height |
| `<C-Left>` | n | Decrease window width |
| `<C-Right>` | n | Increase window width |
| `<leader><tab>l` | n | Last tab |
| `<leader><tab>o` | n | Close other tabs |
| `<leader><tab>f` | n | First tab |
| `<leader><tab><tab>` | n | New tab |
| `<leader><tab>]` | n | Next tab |
| `<leader><tab>d` | n | Close tab |
| `<leader><tab>[` | n | Previous tab |

---

## Navigation & Movement

| Key | Mode | Action |
|-----|------|--------|
| `<C-d>` | n | Scroll down half page |
| `<C-u>` | n | Scroll up half page |
| `<C-f>` | n | Scroll down full page |
| `<C-b>` | n | Scroll up full page |
| `gg` | n | Go to first line |
| `G` | n | Go to last line |
| `0` | n | Go to start of line |
| `^` | n | Go to first non-blank char |
| `$` | n | Go to end of line |
| `w` | n | Next word |
| `b` | n | Previous word |
| `e` | n | End of word |
| `{` | n | Previous paragraph |
| `}` | n | Next paragraph |
| `%` | n | Go to matching bracket |

---

## Terminal

| Key | Mode | Action |
|-----|------|--------|
| `<leader>ft` | n | Terminal (root dir) |
| `<leader>fT` | n | Terminal (cwd) |
| `<C-/>` | n | Terminal (root dir) |
| `<C-_>` | n | Same as `<C-/>` (some terminals) |
| `<Esc><Esc>` | t | Enter normal mode |
| `<C-h>` | t | Go to left window |
| `<C-j>` | t | Go to lower window |
| `<C-k>` | t | Go to upper window |
| `<C-l>` | t | Go to right window |
| `<C-/>` | t | Hide terminal |
| `<C-_>` | t | Same as `<C-/>` (some terminals) |

---

## Harpoon (Quick File Access)

| Key | Mode | Action |
|-----|------|--------|
| `<leader>h` | n | Harpoon quick menu |
| `<leader>H` | n | Harpoon file |
| `<leader>1` | n | Harpoon to file 1 |
| `<leader>2` | n | Harpoon to file 2 |
| `<leader>3` | n | Harpoon to file 3 |
| `<leader>4` | n | Harpoon to file 4 |
| `<leader>5` | n | Harpoon to file 5 |

---

## Yanky (Clipboard History)

| Key | Mode | Action |
|-----|------|--------|
| `<leader>p` | n | Open yank history |
| `y` | n,x | Yank text |
| `p` | n,x | Put yanked text after cursor |
| `P` | n,x | Put yanked text before cursor |
| `gp` | n,x | Put yanked text after selection |
| `gP` | n,x | Put yanked text before selection |
| `[y` | n | Cycle forward through yank history |
| `]y` | n | Cycle backward through yank history |
| `]p` | n | Put and indent right |
| `[p` | n | Put and indent left |
| `]P` | n | Put before and indent right |
| `[P` | n | Put before and indent left |
| `>p` | n | Put after applying filter |
| `<p` | n | Put after applying filter |
| `>P` | n | Put before applying filter |
| `<P` | n | Put before applying filter |
| `=p` | n | Put after formatting |
| `=P` | n | Put before formatting |

---

## Mini Surround

| Key | Mode | Action |
|-----|------|--------|
| `gsa` | n,v | Add surrounding |
| `gsd` | n | Delete surrounding |
| `gsf` | n | Find right surrounding |
| `gsF` | n | Find left surrounding |
| `gsh` | n | Highlight surrounding |
| `gsr` | n | Replace surrounding |
| `gsn` | n | Update n_lines |

**Examples:**
- `gsa"` - Add `"` around selection
- `gsd"` - Delete surrounding `"`
- `gsr"'` - Replace `"` with `'`

---

## Mini Diff

| Key | Mode | Action |
|-----|------|--------|
| `<leader>go` | n | Toggle mini diff overlay |

---

## Diagnostics & Trouble

| Key | Mode | Action |
|-----|------|--------|
| `<leader>xx` | n | Trouble document diagnostics |
| `<leader>xX` | n | Trouble workspace diagnostics |
| `<leader>xL` | n | Trouble location list |
| `<leader>xQ` | n | Trouble quickfix list |
| `<leader>xt` | n | Trouble todo/fix/fixme |
| `[q` | n | Previous quickfix |
| `]q` | n | Next quickfix |

---

## Formatting & Linting

| Key | Mode | Action |
|-----|------|--------|
| `<leader>cf` | n,v | Format document/range |
| `<leader>uf` | n | Toggle auto format (global) |
| `<leader>uF` | n | Toggle auto format (buffer) |

---

## Miscellaneous

| Key | Mode | Action |
|-----|------|--------|
| `<leader>sn` | n | Noice (notification history) |
| `<leader>un` | n | Dismiss all notifications |
| `<leader>xl` | n | Location list |
| `<leader>xq` | n | Quickfix list |
| `<leader>uc` | n | Toggle conceallevel |
| `<leader>uh` | n | Toggle inlay hints |
| `<leader>uT` | n | Toggle treesitter highlight |
| `<leader>ub` | n | Toggle background |
| `<leader>ud` | n | Toggle diagnostics |

---

## Notes

- Mode indicators: `n` = normal, `i` = insert, `v` = visual, `x` = visual block, `o` = operator-pending, `t` = terminal, `s` = select
- Some keymaps may vary based on your installed extras and plugins
- For LSP keymaps to work, you need an active language server for the current file type
- Git keymaps require a git repository
- Many `<leader>u*` keymaps are toggles for UI features

---

## Resources

- [LazyVim Default Keymaps](https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua)
- [LazyVim Documentation](https://lazyvim.github.io)
- Custom keymaps: `lua/config/keymaps.lua`
