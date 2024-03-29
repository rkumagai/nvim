" :call dein#install()

let $CACHE = expand('~/.cache')
if !($CACHE->isdirectory())
  call mkdir($CACHE, 'p')
endif
if &runtimepath !~# '/dein.vim'
  let s:dir = 'dein.vim'->fnamemodify(':p')
  if !(s:dir->isdirectory())
    let s:dir = $CACHE .. '/dein/repos/github.com/Shougo/dein.vim'
    if !(s:dir->isdirectory())
      execute '!git clone https://github.com/Shougo/dein.vim' s:dir
    endif
  endif
  execute 'set runtimepath^='
        \ .. s:dir->fnamemodify(':p')->substitute('[/\\]$', '', '')
endif

if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

let g:python3_host_prog = '/Users/rkumagai/.config/brew/bin/python3:'

" Required:
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')
  call dein#load_toml('~/.config/nvim/dein.toml', {'lazy': 0})
  call dein#load_toml('~/.config/nvim/dein_lazy.toml', {'lazy': 1})
  call dein#add('junegunn/fzf', {'build': './install --all'})
  call dein#add('junegunn/fzf.vim')
 
  call dein#end()
  call dein#save_state()
endif

" if dein#check_install()
"  call dein#install()
" endif

" Required:
filetype plugin indent on
syntax enable

colorscheme darkblue
set noswapfile

highlight Pmenu ctermfg=black ctermbg=brown
highlight PmenuSel ctermfg=white ctermbg=gray 
highlight PmenuSbar ctermbg=gray guibg=gray 
highlight PmenuThumb ctermbg=gray guibg=gray

nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;

" ポップアップを半透明にする
set termguicolors
set pumblend=15
set winblend=15

set hlsearch
set enc=utf8
set fenc=utf8
set tenc=utf8
set suffixesadd+=.php
set vb t_vb=
set noerrorbells
set noexpandtab
set et ts=2 sw=2 cindent

set path+=app/runners/*/*
set clipboard+=unnamedplus

let mapleader = "\<Space>"

nmap <C-P> :prev<CR>
nmap <C-N> :next<CR>
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

autocmd BufNewFile,BufRead *.jb  set filetype=ruby

aug MyAutoCmd
  au FileType ruby,eruby,ruby.rspec nnoremap <silent><buffer>KK :<C-U>Unite -no-start-insert ref/ri   -input=<C-R><C-W><CR>
  au FileType ruby,eruby,ruby.rspec nnoremap <silent><buffer>K  :<C-U>Unite -no-start-insert ref/refe -input=<C-R><C-W><CR>
aug END


"----------------------------------------
" US Keyboard
"----------------------------------------
nnoremap ; :
nnoremap : ;
vnoremap : :
vnoremap : ;

"----------------------------------------
" Neosnipets
"----------------------------------------
autocmd User Rails.view*                 NeoSnippetSource ~/.vim/bundle/neosnippet/ruby_snip/ruby.rails.view.snip
autocmd User Rails.controller*           NeoSnippetSource ~/.vim/bundle/neosnippet/ruby_snip/ruby.rails.controller.snip
autocmd User Rails/db/migrate/*          NeoSnippetSource ~/.vim/bundle/neosnippet/ruby_snip/ruby.rails.migrate.snip
autocmd User Rails/config/routes.rb      NeoSnippetSource ~/.vim/bundle/neosnippet/ruby_snip/ruby.rails.route.snip

"----------------------------------------
" Easymotion
"----------------------------------------

let g:EasyMotion_smartcase = 1
let g:EasyMotion_do_mapping = 0 " Disable default mappings
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)
nmap <Leader>p <Plug>(easymotion-T)
nmap <Leader>n <Plug>(easymotion-t)

"----------------------------------------
" Slim
"----------------------------------------
autocmd BufRead,BufNewFile *.slim setfiletype slim

"----------------------------------------
" thoughtbot/vim-rspec
"----------------------------------------

let g:rspec_command = "!~/.rbenv/shims/rspec {spec}"
map <Leader>@ :call RunCurrentSpecFile()<CR>
map <Leader>a :call RunAllSpecs()<CR>
" map <Leader>s :call RunNearestSpec()<CR>
" map <Leader>l :call RunLastSpec()<CR>

"----------------------------------------
" tpope/vim-dispatch
"----------------------------------------
let g:rspec_command = "Dispatch ~/.rbenv/shims/rspec {spec}"

"----------------------------------------
" junegunn/fzf
"----------------------------------------
nnoremap <silent> <space>f :<C-u>Files<CR>
nnoremap <silent> <space>g :<C-u>Rg<CR>
nnoremap <silent> <space>b :<C-u>Buffers<CR>
nnoremap <silent> <space>r :Ag <C-R><C-W><CR>


