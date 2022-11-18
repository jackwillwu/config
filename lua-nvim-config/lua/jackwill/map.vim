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


" Rmarkdown 设置
autocmd BufRead,BufNewFile *.markdown,*.md,*.rmd set filetype=Rmd
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
autocmd Filetype Rmd inoremap <buffer>,w ---<enter>title: <++><enter>author: <++><enter>bibliography: '/home/jackwill/Zotero/m.bib'<enter>output:<enter><tab> word_document:<enter><tab>reference_docx: "C:\\Users\\zamen\\Documents\\template\\template.docx"<enter><left><left><left><left><left><left><left><left><left><enter>---<enter><enter><left><left><left><++>
autocmd Filetype Rmd inoremap <buffer>,q ---<enter>title: <++><enter>author: <++><enter>bibliography: '/home/jackwill/Zotero/m.bib'<enter>documentclass: ctexart<enter>output:<enter><tab>rticles::ctex<enter><left><left><left><left><enter>---<enter><enter><++>
autocmd Filetype Rmd inoremap <buffer>,r ---<enter>title: <++><enter>author: <++><enter>bibliography: '/home/jackwill/Zotero/m.bib'<enter>output:<enter><tab> powerpoint_presentation:<enter><tab>reference_doc: "C:\\Users\\zamen\\Documents\\template\\template.pptx"<enter><left><left><left><left><left><left><left><left><enter>---<enter><enter><left><left><left><left><left><left>## <++>
autocmd Filetype Rmd inoremap <buffer>,e ---<enter>title: <++><enter>author: <++><enter>bibliography: '/home/jackwill/Zotero/m.bib'<enter>output:<enter><tab> slidy_presentation<enter><left><left><left><left><left><left>---<enter><enter><left><left><left><left><left><left>## <++>
autocmd Filetype Rmd inoremap <buffer>,r ---<enter>title: <++><enter>author: <++><enter>bibliography: '/home/jackwill/Zotero/m.bib'<enter>output:<enter><tab> html_document<enter><left><left><left><left><left><left>---<enter><enter><left><left><left><left><left><left>## <++>

" Rmarkdown编译
autocmd Filetype Rmd map <leader>a :!Rscript -e "rmarkdown::render('%')"<CR>


" citation config


let g:citation_vim_bibtex_file="/home/jackwill/Zotero/m.bib"
let g:citation_vim_mode="bibtex"

let g:citation_vim_reverse_order=1
let g:citation_vim_cache_path='/home/jackwill/Zotero'

let g:citation_vim_zotero_attachment_path="/home/jackwill/Zotero"
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
" inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
"                             \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
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

let g:UltiSnipsSnippetDirectory = ['C:\Users\zamen\.config\nvim\Ultisnips']

