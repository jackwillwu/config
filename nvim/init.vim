set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set exrc
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir= 
set undofile
set incsearch
set scrolloff=8
set signcolumn=yes
set completeopt=menuone,noinsert,noselect
set noshowmode


call plug#begin('C:\Users\zamen\.config\nvim\plug')
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'logico/typewriter'
Plug 'itchyny/lightline.vim'
Plug 'gruvbox-community/gruvbox'
Plug 'preservim/nerdtree'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'frazrepo/vim-rainbow'
Plug 'chun-yang/auto-pairs'
Plug 'luochen1990/rainbow'
Plug 'dhruvasagar/vim-table-mode'
Plug 'Shougo/unite.vim'
Plug 'rafaqz/citation.vim'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'


" 自动补全
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'onsails/lspkind-nvim'
Plug 'hrsh7th/cmp-path'
Plug 'f3fora/cmp-spell'
Plug 'williamboman/nvim-lsp-installer'
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
call plug#end()

colorscheme gruvbox

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

nmap <F8> <Plug>MarkdownPreview
nmap <F9> <Plug>MarkdownPreviewStop
nmap <F10> <Plug>MarkdownPreviewToggle


nnoremap <F2> :NERDTreeFocus<CR>
nnoremap <F3> :NERDTree<CR>
nnoremap <F4> :NERDTreeToggle<CR>
nnoremap <F5> :NERDTreeFind<CR>

" Rmarkdown 快捷键

autocmd Filetype Rmd  inoremap <buffer> ,f <Esc>/<++><CR>:nohlsearch<CR>"_c4l
autocmd Filetype Rmd  inoremap <buffer> <c-e> <Esc>/<++><CR>:nohlsearch<CR>"_c4l
autocmd Filetype Rmd  inoremap <buffer> ,w <Esc>/ <++><CR>:nohlsearch<CR>"_c5l<CR>
autocmd Filetype Rmd  inoremap <buffer> ,n ---<Enter><Enter>
autocmd Filetype Rmd  inoremap <buffer> ,b **** <++><Esc>F*hi
autocmd Filetype Rmd  inoremap <buffer> ,s ~~~~ <++><Esc>F~hi
autocmd Filetype Rmd  inoremap <buffer> ,i ** <++><Esc>F*i
autocmd Filetype Rmd  inoremap <buffer> ,d `` <++><Esc>F`i
autocmd Filetype Rmd  inoremap <buffer> ,c ```<Enter><++><Enter>```<Enter><Enter><++><Esc>4kA
autocmd Filetype Rmd  inoremap <buffer> ,o - [ ] 
autocmd Filetype Rmd  inoremap <buffer> ,pi ![](<++>) <++><Esc>F[a
autocmd Filetype Rmd  inoremap <buffer> ,a [](<++>) <++><Esc>F[a
autocmd Filetype Rmd  inoremap <buffer> ,1 #<Space><Enter><++><Esc>kA
autocmd Filetype Rmd  inoremap <buffer> ,2 ##<Space><Enter><++><Esc>kA
autocmd Filetype Rmd  inoremap <buffer> ,3 ###<Space><Enter><++><Esc>kA
autocmd Filetype Rmd  inoremap <buffer> ,4 ####<Space><Enter><++><Esc>kA
autocmd Filetype Rmd  inoremap <buffer> ,l --------<Enter>
autocmd Filetype Rmd  nnoremap <leader>w :!pandoc 
autocmd Filetype Rmd inoremap <buffer>  ,m ## <++><enter>

" Rmarkdown 

autocmd Filetype Rmd map <F7> :!Rscript -e "rmarkdown::render('%')"<CR>
autocmd Filetype Rmd inoremap <buffer> ,ow ---<enter>title: <++><enter>author: <++><enter>bibliography: 'E:\\Zotero\\m.bib'<enter>output:<enter><tab> word_document:<enter><tab>reference_docx: "C:\\Users\\wujac\\Documents\\template\\template.docx"<enter><left><left><left><left><left><left><left><left><left><enter>---<enter><enter><left><left><left><++>
autocmd Filetype Rmd inoremap <buffer> ,op ---<enter>title: <++><enter>author: <++><enter>bibliography: 'E:\\Zotero\\m.bib'<enter>documentclass: ctexart<enter>output:<enter><tab>rticles::ctex<enter><left><left><left><left><enter>---<enter><enter><++>
autocmd Filetype Rmd inoremap <buffer> ,ob ---<enter>title: <++><enter>author: <++><enter>bibliography: 'E:\\Zotero\\m.bib'<enter>output:<enter><tab> powerpoint_presentation:<enter><tab>reference_doc: "C:\\Users\\wujac\\Documents\\template\\template.pptx"<enter><left><left><left><left><left><left><left><left><enter>---<enter><enter><left><left><left><left><left><left>## <++>

let g:table_mode_corner_corner='+'
let g:table_mode_header_fillchar='='
let g:rainbow_active = 1


let g:citation_vim_mode="zotero" 
let g:citation_vim_zotero_path="E:\Zotero"
let g:citation_vim_zotero_version=5


nmap <leader>u [unite]
nnoremap [unite] <nop>
nnoremap <silent>[unite]c       :<C-u>Unite -buffer-name=citation-start-insert -default-action=append      citation/key<cr>
let g:citation_vim_cache_path='E:\Zotero'
let g:citation_vim_outer_prefix="["
let g:citation_vim_inner_prefix="@"
let g:citation_vim_suffix="]"
let g:citation_vim_et_al_limit=2
let g:citation_vim_reverse_order=0
nnoremap <silent>[unite]co :<C-u>Unite -input=<C-R><C-W> -default-action=start -force-immediately citation/file<cr>
nnoremap <silent><leader>cu :<C-u>Unite -input=<C-R><C-W> -default-action=start -force-immediately citation/url<cr>
nnoremap <silent>[unite]cf :<C-u>Unite -input=<C-R><C-W> -default-action=file -force-immediately citation/file<cr>
nnoremap <silent>[unite]cf :<C-u>Unite -input=<C-R><C-W> -default-action=file -force-immediately citation/file<cr>
nnoremap <silent>[unite]cs :<C-u>Unite  -default-action=yank  citation/key:<C-R><C-W><cr>
let g:citation_vim_zotero_attachment_path="E:\\Zotero\\storage"
" let g:citation_vim_collection" = 'E:\Zotero\storage'


set completeopt=menu,menuone,noselect

lua <<EOF
  -- Set up nvim-cmp.
  local cmp = require'cmp'

  cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      end,
    },
    window = {
      -- completion = cmp.config.window.bordered(),
      -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' }, -- For vsnip users.
      -- { name = 'luasnip' }, -- For luasnip users.
      -- { name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
    }, {
      { name = 'buffer' },
    })
  })

  -- Set configuration for specific filetype.
  cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
    }, {
      { name = 'buffer' },
    })
  })

  -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })
