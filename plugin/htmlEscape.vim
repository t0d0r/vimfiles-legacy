function HtmlEscape()
  silent s/&/\&amp;/eg
  silent s/</\&lt;/eg
  silent s/>/\&gt;/eg
endfunction

function HtmlUnEscape()
  silent s/&amp;lt;/&lt;/eg
  silent s/&gt;/>/eg
  silent s/&amp;/\&/eg
endfunction

map <silent> <c-h> :call HtmlEscape()<CR>
map <silent> <c-u> :call HtmlUnEscape()<CR>
