"mkdir -p ~/.vim/bundle
"git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
"git clone https://github.com/Shougo/vimproc ~/.vim/bundle/vimprc


"map <C-g> :Gtags 
"map <C-i> :Gtags -f %<CR>
"map <C-j> :GtagsCursor<CR>
"map <C-n> :cn<CR>
"map <C-p> :cp<CR>

"pathogen
"execute pathogen#infect()
"execute pathogen#incubate()
"execute pathogen#helptags()

"et g:tabular_loaded = 1

highlight SpecialKey guibg=#222222 cterm=underline ctermfg=red
set list
set listchars=tab:\ \ ,extends:<,trail:\ 


set showmatch
set showcmd
set showmode
set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

" 全角スペース・行末のスペース・タブの可視化
if has("syntax")
    syntax on

    " PODバグ対策
    syn sync fromstart

    function! ActivateInvisibleIndicator()
        syntax match InvisibleJISX0208Space "　" display containedin=ALL
        highlight InvisibleJISX0208Space term=underline ctermbg=Blue guibg=darkgray gui=underline
        "syntax match InvisibleTrailedSpace "[ \t]\+$" display containedin=ALL
        "highlight InvisibleTrailedSpace term=underline ctermbg=Red guibg=NONE gui=undercurl guisp=darkorange
        "syntax match InvisibleTab "\t" display containedin=ALL
        "highlight InvisibleTab term=underline ctermbg=white gui=undercurl guisp=darkslategray
    endfunction

    augroup invisible
        autocmd! invisible
        autocmd BufNew,BufRead * call ActivateInvisibleIndicator()
    augroup END
endif

set display=uhex

" StatusLine ---------------------------
set laststatus=2				" ステータスラインを2行に
set statusline=%<%f\ #%n%m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%y%=%l,%c%V%8P


set nocompatible               " be iMproved
filetype off

"---------------------------------------
" neobundle
"---------------------------------------
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#rc(expand('~/.vim/bundle/'))
endif
" originalrepos on github
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc'
NeoBundle 'Shougo/unite.vim'
if has("lua")
	NeoBundle 'Shougo/neocomplete'
endif
NeoBundle 'Shougo/neosnippet'
"NeoBundle 'jpalardy/vim-slime'
"NeoBundle 'scrooloose/syntastic'
NeoBundle 'alpaca-tc/vim-endwise.git', {
	\ 'autoload' : {
	\ 'insert' : 1, }}
NeoBundle 'edsono/vim-matchit', { 'autoload' : {
	\ 'filetypes' : 'ruby',
	\ 'mappings' : ['nx', '%'] }}
""NeoBundle 'https://bitbucket.org/kovisoft/slimv'

filetype plugin indent on     " required!
filetype indent on

"------------------------------------
" endwise.vim
"------------------------------------
let g:endwise_no_mappings=1

"------------------------------------
"" neosnippet
"------------------------------------
"" neosnippet "{{{
 
" snippetを保存するディレクトリを設定してください
" example
let s:default_snippet = neobundle#get_neobundle_dir() .  '/neosnippet/autoload/neosnippet/snippets' " 本体に入っているsnippet
let s:my_snippet = '~/snippet' " 自分のsnippet
let g:neosnippet#snippets_directory = s:my_snippet
let g:neosnippet#snippets_directory = s:default_snippet . ',' .  s:my_snippet
imap <silent><C-F>                <Plug>(neosnippet_expand_or_jump)
inoremap <silent><C-U>            <ESC>:<C-U>Unite snippet<CR>
nnoremap <silent><Space>e         :<C-U>NeoSnippetEdit -split<CR>
smap <silent><C-F>                <Plug>(neosnippet_expand_or_jump)
"xmap <silent>o                    <Plug>(neosnippet_register_oneshot_snippet)
" "}}}
"

set pastetoggle=<C-E>   " indent togglr
set tabstop=4           " タブを表示するときの幅
set shiftwidth=4        " タブを挿入するときの幅
set noexpandtab         " タブをタブとして扱う(スペースに展開しない)
set softtabstop=0
