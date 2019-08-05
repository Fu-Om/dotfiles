" set autoindent
" Indentation space
setlocal shiftwidth=4
" Tab space
setlocal softtabstop=4
" Tab to space 
setlocal expandtab
" Tab space
setlocal tabstop=4

" Abbreviations
iabbrev _#! #!/usr/bin/env python
iabbrev _main if __name__ == '__main__':<CR><++>
iabbrev _int <++> = int(input()) 
iabbrev _list <++> = list(map(int, input().split()))
