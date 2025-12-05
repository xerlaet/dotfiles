return {
  "lervag/vimtex",
  lazy = false,     -- we don't want to lazy load VimTeX
  -- tag = "v2.15", -- uncomment to pin to a specific release
  -- ft = {'tex', 'bib', 'sty'} -- load on certain filetypes
  init = function()
    -- VimTeX configuration goes here, e.g.
    vim.g.vimtex_view_method = "zathura"
    vim.g.vimtex_view_automatic = 1 -- update immediately
    vim.g.vimtex_compiler_method = 'latexmk'
    -- stop from opening quick fix always
    -- 0: never, 1: on error, 2: always
    vim.g.vimtex_quickfix_mode = 1
  end
}
--sudo pacman -S texlive-basic texlive-latex texlive-latexrecommended texlive-latexextra texlive-binextra
