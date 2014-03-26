set term=builtin_ansi
set tabstop=4
set shiftwidth=4
set expandtab
set backspace=indent,eol,start
au VimLeave * :!clear
filetype plugin indent on
syntax on

function! s:zen_html_tab()
  let line = getline('.')
  if match(line, '<.*>') >= 0
    return "\<c-y>n"
  endif
  return "\<c-y>,"
endfunction

autocmd FileType html imap <buffer><expr><tab> <sid>zen_html_tab()
