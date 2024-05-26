# ISSUE 28575

* Link: https://github.com/neovim/neovim/issues/28575

## Steps

1. Install `clangd` LSP.
2. Install `marksman` LSP.
3. `nvim --clean -u init.lua main.cpp`
4. Move cursor over `printf` function.
5. Press `Kjk` (might need to run this more than once).
