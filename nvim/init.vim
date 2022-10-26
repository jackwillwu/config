" vim设置
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
set smartcase
set noswapfile
set nobackup
set undodir=~/.config/nvim/undofile
set undofile
set incsearch
set scrolloff=8
set noshowmode
set nocompatible
filetype plugin on
syntax on
set conceallevel=1

" 插件
call plug#begin('C:\Users\zamen\.config\nvim\plug')
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'itchyny/lightline.vim'
Plug 'gruvbox-community/gruvbox'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'frazrepo/vim-rainbow'
Plug 'chun-yang/auto-pairs'
Plug 'luochen1990/rainbow'
Plug 'dhruvasagar/vim-table-mode'
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'mbbill/undotree'
Plug 'Shougo/unite.vim'
Plug 'rafaqz/citation.vim'
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
Plug 'vimwiki/vimwiki'
Plug 'lervag/vimtex'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
call plug#end()


" 背景设置
colorscheme gruvbox
hi Normal ctermfg=252 ctermbg=none
let g:rainbow_active = 1


" fuzzy finder
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>


" undofire
nnoremap <F5> :UndotreeToggle<CR>


" Markdownpreview
nmap <F2> <Plug>MarkdownPreview
nmap <F3> <Plug>MarkdownPreviewStop
nmap <F4> <Plug>MarkdownPreviewToggle




" 自定义快捷键
" nnoremap <leader>ww :wq<CR> 
nnoremap <leader>qq :q!<CR> 
nnoremap <leader>ee :w<CR>
inoremap <leader>a <- 
inoremap <C-z> <C-n>
map <SPACE> <Leader>


" Rmarkdown 设置
autocmd BufRead,BufNewFile *.markdown,*.md set filetype=rmd
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
autocmd Filetype Rmd  inoremap <buffer> ,m ## <++><enter>
autocmd Filetype Rmd map <leader>la extra_dependencies: ['tikz','tikz-qtree'] 
autocmd Filetype Rmd inoremap <buffer>,w ---<enter>title: <++><enter>author: <++><enter>bibliography: 'E:\\Zotero\\m.bib'<enter>output:<enter><tab> word_document:<enter><tab>reference_docx: "C:\\Users\\zamen\\Documents\\template\\template.docx"<enter><left><left><left><left><left><left><left><left><left><enter>---<enter><enter><left><left><left><++>
autocmd Filetype Rmd inoremap <buffer>,q ---<enter>title: <++><enter>author: <++><enter>bibliography: 'E:\\Zotero\\m.bib'<enter>documentclass: ctexart<enter>output:<enter><tab>rticles::ctex<enter><left><left><left><left><enter>---<enter><enter><++>
autocmd Filetype Rmd inoremap <buffer>,r ---<enter>title: <++><enter>author: <++><enter>bibliography: 'E:\\Zotero\\m.bib'<enter>output:<enter><tab> powerpoint_presentation:<enter><tab>reference_doc: "C:\\Users\\zamen\\Documents\\template\\template.pptx"<enter><left><left><left><left><left><left><left><left><enter>---<enter><enter><left><left><left><left><left><left>## <++>
autocmd Filetype Rmd inoremap <buffer>,e ---<enter>title: <++><enter>author: <++><enter>bibliography: 'E:\\Zotero\\m.bib'<enter>output:<enter><tab> slidy_presentation<enter><left><left><left><left><left><left>---<enter><enter><left><left><left><left><left><left>## <++>
autocmd Filetype Rmd inoremap <buffer>,r ---<enter>title: <++><enter>author: <++><enter>bibliography: 'E:\\Zotero\\m.bib'<enter>output:<enter><tab> html_document<enter><left><left><left><left><left><left>---<enter><enter><left><left><left><left><left><left>## <++>

" Rmarkdown编译
autocmd Filetype Rmd map <leader>a :!Rscript -e "rmarkdown::render('%')"<CR> :!sumatrapdf.exe  %:r.pdf<CR>
autocmd Filetype Rmd map <leader>s :!Rscript -e "rmarkdown::render('%')"<CR> :!WINWORD.exe %:r.docx<CR>
autocmd Filetype Rmd map <leader>d :!Rscript -e "rmarkdown::render('%')"<CR> :!POWERPNT.exe %:r.ppt<CR>
autocmd Filetype Rmd map <leader>f :!Rscript -e "rmarkdown::render('%')"<CR>


" citation config
autocmd Filetype Rmd :call Deletechace()

function Deletechace()
    silent exec "!del E:\\zotero\\citation_vim_cache"
endfunction

let g:citation_vim_bibtex_file="E:\\zotero\\m.bib"
let g:citation_vim_mode="bibtex"

let g:citation_vim_reverse_order=1
let g:citation_vim_cache_path='E:\\zotero'

let g:citation_vim_zotero_attachment_path="E:\\Zotero\\storage"
let g:citation_vim_et_al_limit=2
let g:citation_vim_reverse_order=0

" citation map

nmap <leader>u [unite]
nnoremap [unite] <nop>
nnoremap <silent>[unite]c       :<C-u>Unite -buffer-name=citation-start-insert -default-action=append      citation/key<cr>
nnoremap <silent>[unite]co :<C-u>Unite -input=<C-R><C-W> -default-action=start -force-immediately citation/file<cr>
nnoremap <silent><leader>cu :<C-u>Unite -input=<C-R><C-W> -default-action=start -force-immediately citation/url<cr>
nnoremap <silent>[unite]cf :<C-u>Unite -input=<C-R><C-W> -default-action=file -force-immediately citation/file<cr>
nnoremap <silent>[unite]cf :<C-u>Unite -input=<C-R><C-W> -default-action=file -force-immediately citation/file<cr>
nnoremap <silent>[unite]cs :<C-u>Unite  -default-action=yank  citation/key:<C-R><C-W><cr>

" coc config

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
"  vim markdown config
"  let g:tex_conceal = ""
let g:vim_markdown_math = 1
let g:vim_markdown_folding_disabled = 1
set concealcursor=""
" Ensure files are read as what I want:

map <F9> :!pandoc --pdf-engine=xelatex % -o %:r.pdf -V mainfont="SimSun"<CR>
map <F12> :!pandoc % -o %:r.html<CR>


let g:vimwiki_list = [{'path': 'E:/notes',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

let g:tex_flavor='latex'
let g:vimtex_view_method='SumatraPDF'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'


"LaTeX配置
let g:vimtex_texcount_custom_arg=' -ch -total'
"映射VimtexCountWords！\lw 在命令模式下enter此命令可统计中英文字符的个数
au FileType tex map <buffer> <silent>  <leader>lw :VimtexCountWords!  <CR><CR>
"这里是LaTeX编译引擎的设置，这里默认LaTeX编译方式为-pdf(pdfLaTeX),
"vimtex提供了magic comments来为文件设置编译方式
"例如，我在tex文件开头输入 % !TEX program = xelatex   即指定-xelatex （xelatex）编译文件
let g:vimtex_compiler_latexmk_engines = {
    \ '_'                : '-pdf',
    \ 'pdflatex'         : '-pdf',
    \ 'dvipdfex'         : '-pdfdvi',
    \ 'lualatex'         : '-lualatex',
    \ 'xelatex'          : '-xelatex',
    \ 'context (pdftex)' : '-pdf -pdflatex=texexec',
    \ 'context (luatex)' : '-pdf -pdflatex=context',
    \ 'context (xetex)'  : '-pdf -pdflatex=''texexec --xtx''',
    \}
"这里是设置latexmk工具的可选参数
let g:vimtex_compiler_latexmk = {
    \ 'build_dir' : '',
    \ 'callback' : 1,
    \ 'continuous' : 1,
    \ 'executable' : 'latexmk',
    \ 'hooks' : [],
    \ 'options' : [
    \   '-verbose',
    \   '-file-line-error',
    \   '-shell-escape',
    \   '-synctex=1',
    \   '-interaction=nonstopmode',
    \ ],
    \}

" 阅读器相关的配置 包含正反向查找功能 仅供参考
let g:vimtex_view_general_options_latexmk = '-reuse-instance'
let g:vimtex_view_general_options
     \ = ' -reuse-instance -forward-search @tex @line @pdf'
     \ . ' -inverse-search "' . 'cmd /c start /min \"\" '  . exepath(v:progpath)
     \ . ' -v --not-a-term -T dumb -c  \"VimtexInverseSearch %l ''%f''\""' "for vim/gvim



"编译过程中忽略警告信息
let g:vimtex_quickfix_open_on_warning=0

" vimtex
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

let g:UltiSnipsSnippetDirectory = ['C:\Users\zamen\.config\nvim\Ultisnips']
