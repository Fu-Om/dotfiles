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
iabbrev _int1 int(input()) 
iabbrev _map map(int, input().split())
iabbrev _list list(map(int, input().split()))
iabbrev _list2 [list(map(int, input().split())) for _ in range(N)] 
iabbrev _log import logging<CR>logging.basicConfig(level=logging.DEBUG)<CR>logging.disable(logging.CRITICAL)
iabbrev _print logging.debug('<++>')
iabbrev _pdb import pdb; pdb.set_trace()
iabbrev _stdin from sys import stdin<CR>def input():<CR>return stdin.readline()[:-1]
iabbrev _tmp 
\<CR>#!/usr/bin/env python
\<CR>def main():
\<CR><++>
\<CR>
\<CR>if __name__ == '__main__':
\<CR>main()
