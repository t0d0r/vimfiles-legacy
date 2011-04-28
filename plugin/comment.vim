au FileType * let b:comment_leader = '# '
au FileType haskell,vhdl,ada let b:comment_leader = '-- '
au FileType vim let b:comment_leader = '" '
au FileType c,cpp,java let b:comment_leader = '// '
au FileType sh,make let b:comment_leader = '# '
au FileType tex let b:comment_leader = '% '

noremap <silent> ,c :<C-B>sil <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:noh<CR>
noremap <silent> ,u :<C-B>sil <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:noh<CR>
" , # perl # comments
" ,/  C/C++/C#/Java // comments
" ,<  HTML comment
" ,*  c++ java style comments
noremap <silent> ,# :s/^/# /<CR><Esc>:nohlsearch<CR>
noremap <silent> ,/ :s/^/\/\/ /<CR><Esc>:nohlsearch<CR>
noremap <silent> ,< :s/^\(.*\)$/<!-- \1 -->/<CR><Esc>:nohlsearch<CR>
noremap <silent> ,* :s/^\(.*\)$/\/\* \1 \*\//<CR><Esc>:nohlsearch<CR>
