"colorscheme
set background=dark
colorscheme dracula

"general hl settings
au ColorScheme * hi Normal ctermbg=None
au ColorScheme * hi VertSplit cterm=None ctermfg=magenta
au ColorScheme * hi CursorLineNr cterm=None ctermfg=5
au ColorScheme * hi CursorLine ctermbg=0 ctermfg=None
au ColorScheme * hi EndOfBuffer ctermfg=magenta

"lsp virt text hl
au ColorScheme * hi! LspDiagnosticsDefaultError ctermfg=1
au ColorScheme * hi! LspDiagnosticsVirtualTextWarning ctermfg=3
au ColorScheme * hi! LspDiagnosticsDefaultWarning ctermfg=3

" floaterm lh
au ColorScheme * hi FloatermBorder ctermfg=magenta ctermbg=None
au ColorScheme * hi Floaterm ctermbg=None

"debug
au ColorScheme * hi debugBreakpoint ctermbg=None ctermfg=red
au ColorScheme * hi debugPC ctermbg=None ctermfg=black ctermbg=5

" dashboard
au ColorScheme * hi DashboardHeader cterm=None ctermfg=5
au ColorScheme * hi DashboardCenter cterm=None ctermfg=3
au ColorScheme * hi DashboardShortcut cterm=None ctermfg=3
au ColorScheme * hi DashboardFooter cterm=None ctermfg=2

" nvim tree
au ColorScheme * hi NvimTreeFolderIcon ctermbg=None ctermfg=4
au ColorScheme * hi NvimTreeIndentMarker ctermbg=None ctermfg=4
au ColorScheme * hi NvimTreeExecFile ctermbg=None ctermfg=2
au ColorScheme * hi NvimTreePythonIcon ctermbg=None ctermfg=3
au ColorScheme * hi NvimTreeLicenseIcon ctermbg=None ctermfg=4
