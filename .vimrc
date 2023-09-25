colorscheme slate
set ruler
set fo=tcq
set nocompatible
set modeline
set bg=dark
syntax on
highlight comment ctermfg=cyan
set tw=72
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4

" Python dev - tabs to spaces
highlight LiteralTabs ctermbg=darkgreen guibg=darkgreen
match LiteralTabs /\s\  /
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$/

" Set up puppet manifest and spec options
au BufRead,BufNewFile *.pp
  \ set filetype=puppet
au BufRead,BufNewFile *_spec.rb
  \ nmap <F8> :!rspec --color %<CR>

" Enable indentation matching for =>
filetype plugin indent on

spell check
set spelllang=en_gb
set spellfile=~/.vim/spell.en.utf-8.add
au BufNewFile,BufRead /tmp/mutt*  setf mail
au BufNewFile,BufRead /tmp/mutt*  set ai et tw=79 spell
z= suggestions, zg to add word to spell file.

"highlight lines of text exceeding the wordwrap limit
augroup vimrc_autocmds
    autocmd BufEnter * highlight OverLength ctermbg=darkgrey guibg=#592929
    autocmd BufEnter * match OverLength /\%74v.*/
augroup END

