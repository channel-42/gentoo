vim.cmd('set background=dark')
vim.cmd('colorscheme dracula')

-- colors
local colors = {
    color0=     '#141022',
    color8=     '#4D4D4D',
    color1=     '#FF5555',
    color9=     '#FF6E67',
    color2=     '#50FA7B',
    color10=    '#5AF78E',
    color3=     '#F1FA8C',
    color11=    '#F4F99D',
    color4=     '#BD93F9',
    color12=    '#CAA9FA',
    color5=     '#FF79C6',
    color13=    '#7957B9',
    color6=     '#8BE9FD',
    color14=    '#9AEDFE',
    color7=     '#BFBFBF',
    color15=    '#E6E6E6',
}

--[[
local colors = {
    bg=     '#141022',
    red=     '#FF5555',
    green=     '#50FA7B',
    yellow=     '#F1FA8C',
    orange=    '#F4F99D',
    blue=     '#BD93F9',
    violet=    '#CAA9FA',
    magenta=     '#FF79C6',
    darkblue=    '#7957B9',
    cyan=     '#8BE9FD',
    fg=    '#E6E6E6',
}
]]--

-- general
vim.cmd('au ColorScheme * hi Normal ctermbg=None guibg=None')
vim.cmd('au ColorScheme * hi NonText ctermbg=None guibg=None')
vim.cmd('au ColorScheme * hi VertSplit cterm=None gui=None guifg='.. colors.color13)
vim.cmd('au ColorScheme * hi CursorLineNr cterm=None gui=None ctermfg=5 guifg='.. colors.color5)
vim.cmd('au ColorScheme * hi CursorLine ctermbg=0 ctermfg=None guifg=None guibg=' .. colors.color0)
vim.cmd('au ColorScheme * hi EndOfBuffer ctermfg=magenta guifg='.. colors.color13)
vim.cmd('au ColorScheme * hi StatusLine ctermbg=None gui=NONE guifg=NONE guibg=NONE ctermfg=None')
vim.cmd('au ColorScheme * hi StatusLineNC ctermbg=None gui=NONE guifg=NONE guibg=NONE ctermfg=None')

-- lsp virt text hl
vim.cmd('au ColorScheme * hi! LspDiagnosticsDefaultError ctermfg=1 guifg='.. colors.color1)
vim.cmd('au ColorScheme * hi! LspDiagnosticsVirtualTextWarning ctermfg=3 guifg='.. colors.color3)
vim.cmd('au ColorScheme * hi! LspDiagnosticsDefaultWarning ctermfg=3 guifg='.. colors.color3)

-- floaterm lh
vim.cmd('au ColorScheme * hi FloatermBorder ctermfg=magenta ctermbg=None guibg=None guifg='.. colors.color13)
vim.cmd('au ColorScheme * hi Floaterm ctermbg=None guibg=None')

-- debug
vim.cmd('au ColorScheme * hi debugBreakpoint ctermbg=None ctermfg=red guibg=None guifg='.. colors.color1)
vim.cmd('au ColorScheme * hi debugPC ctermfg=black ctermbg=5 guifg='.. colors.color0 .. ' guibg='.. colors.color5)

-- dashboard
vim.cmd('au ColorScheme * hi DashboardHeader cterm=None gui=None ctermfg=5 guifg='.. colors.color5)
vim.cmd('au ColorScheme * hi DashboardCenter cterm=None gui=None ctermfg=3 guifg='.. colors.color3)
vim.cmd('au ColorScheme * hi DashboardShortcut cterm=None gui=None ctermfg=3 guifg='.. colors.color3)
vim.cmd('au ColorScheme * hi DashboardFooter cterm=None gui=None ctermfg=2 guifg=' .. colors.color2)

-- nvim tree
vim.cmd('au ColorScheme * hi NvimTreeFolderIcon ctermbg=None guibg=None ctermfg=4 guifg='.. colors.color4)
vim.cmd('au ColorScheme * hi NvimTreeIndentMarker ctermbg=None guibg=None ctermfg=4 guifg='.. colors.color4)
vim.cmd('au ColorScheme * hi NvimTreeExecFile ctermbg=None guibg=None ctermfg=2 guifg='.. colors.color2)
vim.cmd('au ColorScheme * hi NvimTreePythonIcon ctermbg=None guibg=None ctermfg=3 guifg='.. colors.color3)
vim.cmd('au ColorScheme * hi NvimTreeLicenseIcon ctermbg=None ctermfg=4')

-- neogit
vim.cmd('au ColorScheme * hi NeogitDiffAdd cterm=None guibg=None ctermfg=2 guifg='.. colors.color2)
vim.cmd('au ColorScheme * hi NeogitDiffDelete cterm=None guibg=None ctermfg=1 guifg='.. colors.color1)
vim.cmd('au ColorScheme * hi NeogitDiffContext cterm=None guibg=None ctermfg=1 guifg='.. colors.color1)
vim.cmd('au ColorScheme * hi NeogitHunkHeader cterm=None guibg=None ctermfg=1 guifg='.. colors.color1)
vim.cmd('au ColorScheme * hi NeogitHunkHeaderHighlight cterm=None guibg=None ctermfg=6 guifg='.. colors.color6)
