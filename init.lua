vim.g.python3_host_prog = '/usr/bin/python3'

-- Install packer.nvim if not installed
local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
end

-- Load packer.nvim and plugins
require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  -- Add other plugins as needed
  use 'lervag/vimtex'
end)

-- VimTeX setup
vim.api.nvim_exec([[
  let g:tex_flavor='latex'
  let g:vimtex_compiler_method = 'latexmk'
]], false)

-- Install vimtex using your preferred plugin manager
-- Example with Packer
vim.cmd([[packadd packer.nvim]])

require('packer').startup(function()
    use 'lervag/vimtex'
end)

-- Configure vimtex to use Zathura
vim.g.vimtex_view_method = 'zathura'
vim.g.vimtex_zathura_options = {}

-- Shortcut for \textbf{} in insert mode with cursor inside the curly braces
vim.api.nvim_set_keymap('i', '<F1>', '\\textbf{}<Left>', { noremap = true, silent = true })

-- Shortcut for \begin{itemize} ... \end{itemize} in insert mode
vim.api.nvim_set_keymap('i', '<F2>', '\\begin{itemize}\n\\item \n\\end{itemize}<Esc>kA', { noremap = true, silent = true })

-- Shortcut for \item ... in insert mode
vim.api.nvim_set_keymap('i', '<F3>', '\\item ', { noremap = true, silent = true })

-- Shortcut for \subsection*{} in insert mode
vim.api.nvim_set_keymap('i', '<F4>', '\\subsection*{}<Left>', { noremap = true, silent = true })

-- Shortcut for custom snippet in insert mode
vim.api.nvim_set_keymap('i', '<F5>', '\\centering\n\\huge\n\\textbf{}\n\\normalsize\n\\raggedright\n\\vspace{12pt}\n\\renewcommand{\\thesection}{\\arabic{section}}<Up><Up><Up><Up><Left>', { noremap = true, silent = true })

