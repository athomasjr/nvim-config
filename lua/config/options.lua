-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Reduce swap file update time from default 4000ms to 200ms
-- Benefits:
-- - Reduces data loss if Neovim crashes (swap files update more frequently)
-- - Improves LSP responsiveness (hover, diagnostics appear faster)
-- - Faster gitgutter/sign column updates
vim.opt.updatetime = 200
