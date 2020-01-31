let s:comment_map = {
    \   "c": '\/\/',
    \   "cpp": '\/\/',
    \   "java": '\/\/',
    \   "javascript": '\/\/',
    \   "python": '#',
    \   "sh": '#',
    \   "fstab": '#',
    \   "conf": '#',
    \   "bashrc": '#',
    \   "vim": '"',
    \   "tex": '%',
    \ }

function! ToggleComment()
    if has_key(s:comment_map, &filetype)
        let comment_leader = s:comment_map[&filetype]
    else
        let comment_leader = '#'
    endif
    if getline('.') =~ '^\s*$'
        " Skip empty line
        return
    endif
    if getline('.') =~ '^\s*' . comment_leader
        " Uncomment the line
        execute 'silent s/\v\s*\zs' . comment_leader . '\s*\ze//'
    else
        " Comment the line
        execute 'silent s/\v^(\s*)/\1' . comment_leader . ' /'
    endif
endfunction

nnoremap <Leader><Leader> :call ToggleComment()<CR>
vnoremap <Leader><Leader> :call ToggleComment()<CR> 
