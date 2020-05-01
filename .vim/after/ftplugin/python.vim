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
iabbrev _in int(input())
iabbrev _map map(int, input().split())
iabbrev _li list(map(int, input().split()))
iabbrev _li2 [list(map(int, input().split())) for _ in range(<++>)]
iabbrev _tu tuple(map(int, input().split()))
iabbrev _tu2 [tuple(map(int, input().split())) for _ in range(<++>)]
iabbrev _p print(<++>) 
iabbrev _pdb import pdb; pdb.set_trace()
