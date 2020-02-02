hi Statement ctermfg=109

if has('conceal')
    " A few omissions in the core tex.vim
    syn match texMathSymbol '\\langle\>\s*' contained conceal cchar=⟨
    syn match texMathSymbol '\s*\\rangle\>' contained conceal cchar=⟩
    syn match texMathSymbol '\\\\' contained conceal cchar=⤦
    syn match texMathSymbol '\\sqrt' contained conceal cchar=√

    " hide \text delimiter etc inside math mode
    if !exists("g:tex_nospell") || !g:tex_nospell
        syn region texMathText matchgroup=texStatement start='\\\(\(inter\)\=mathrm\)\s*{' end='}' concealends keepend contains=@texFoldGroup,
        syn region texMathText matchgroup=texStatement start='\\\(\(inter\)\=text\|mbox\)\s*{' end='}' concealends keepend contains=@texFoldGroup,@Spell
    else
        syn region texMathText matchgroup=texStatement start='\\\(\(inter\)\=text\|mbox\|mathrm\)\s*{' end='}' concealends keepend contains=@texFoldGroup
    endif

    " mathtools
    syn match texMathSymbol '\\coloneqq\>' contained conceal cchar=≔
    syn match texMathSymbol '\\eqqcolon\>' contained conceal cchar=≕

    " Quotes
    call matchadd('Conceal', "``", 10, -1, {'conceal': '“'})
    call matchadd('Conceal', "''", 10, -1, {'conceal': '”'})

    " hide \bm and \mathbf
    syn region texBoldMathText matchgroup=texStatement start='\\\(mathbf\|bm\){' end='}' concealends keepend contains=@texMathZoneGroup
    syn cluster texMathZoneGroup add=texBoldMathText
    hi texBoldMathText cterm=bold gui=bold

    " Wenzel's bold matrix and vector aliases
    syn region texBoldMathText matchgroup=texStatement start='\\v\([a-z]\>\)\@=' end='\>' concealends keepend contains=@texMathZoneGroup
    syn region texBoldMathText matchgroup=texStatement start='\\m\([A-Z]\>\)\@=' end='\>' concealends keepend contains=@texMathZoneGroup
    syn match texMathSymbol '\\bomega\>' contained conceal cchar=ω
    syn match texMathSymbol '\\bdelta\>' contained conceal cchar=δ

    " Hide various spacing-related characters
    syn match texMathSymbol '\\,' contained conceal cchar= 
    syn match texMathSymbol '\\ ' contained conceal cchar= 
    syn match texMathSymbol '\\quad' contained conceal cchar= 
    syn match texMathSymbol '\\where\>' contained conceal cchar=|
    syn match texMathSymbol '\\\!' contained conceal

    " Braces
    syn match texDelimiter '\\{' contained conceal cchar={
    syn match texDelimiter '\\}' contained conceal cchar=}

    " \mathbb characters
    syn match texMathSymbol '\\mathbb{A}' contained conceal cchar=𝔸
    syn match texMathSymbol '\\mathbb{B}' contained conceal cchar=𝔹
    syn match texMathSymbol '\\mathbb{C}' contained conceal cchar=ℂ
    syn match texMathSymbol '\\mathbb{D}' contained conceal cchar=𝔻
    syn match texMathSymbol '\\mathbb{E}' contained conceal cchar=𝔼
    syn match texMathSymbol '\\mathbb{F}' contained conceal cchar=𝔽
    syn match texMathSymbol '\\mathbb{G}' contained conceal cchar=𝔾
    syn match texMathSymbol '\\mathbb{H}' contained conceal cchar=ℍ
    syn match texMathSymbol '\\mathbb{I}' contained conceal cchar=𝕀
    syn match texMathSymbol '\\mathbb{J}' contained conceal cchar=𝕁
    syn match texMathSymbol '\\mathbb{K}' contained conceal cchar=𝕂
    syn match texMathSymbol '\\mathbb{L}' contained conceal cchar=𝕃
    syn match texMathSymbol '\\mathbb{M}' contained conceal cchar=𝕄
    syn match texMathSymbol '\\mathbb{N}' contained conceal cchar=ℕ
    syn match texMathSymbol '\\mathbb{O}' contained conceal cchar=𝕆
    syn match texMathSymbol '\\mathbb{P}' contained conceal cchar=ℙ
    syn match texMathSymbol '\\mathbb{Q}' contained conceal cchar=ℚ
    syn match texMathSymbol '\\mathbb{R}' contained conceal cchar=ℝ
    syn match texMathSymbol '\\mathbb{S}' contained conceal cchar=𝕊
    syn match texMathSymbol '\\mathbb{T}' contained conceal cchar=𝕋
    syn match texMathSymbol '\\mathbb{U}' contained conceal cchar=𝕌
    syn match texMathSymbol '\\mathbb{V}' contained conceal cchar=𝕍
    syn match texMathSymbol '\\mathbb{W}' contained conceal cchar=𝕎
    syn match texMathSymbol '\\mathbb{X}' contained conceal cchar=𝕏
    syn match texMathSymbol '\\mathbb{Y}' contained conceal cchar=𝕐
    syn match texMathSymbol '\\mathbb{Z}' contained conceal cchar=ℤ

    " \mathcal characters
    syn match texMathSymbol '\\math\(cal\|scr\){A}' contained conceal cchar=𝓐
    syn match texMathSymbol '\\math\(cal\|scr\){B}' contained conceal cchar=𝓑
    syn match texMathSymbol '\\math\(cal\|scr\){C}' contained conceal cchar=𝓒
    syn match texMathSymbol '\\math\(cal\|scr\){D}' contained conceal cchar=𝓓
    syn match texMathSymbol '\\math\(cal\|scr\){E}' contained conceal cchar=𝓔
    syn match texMathSymbol '\\math\(cal\|scr\){F}' contained conceal cchar=𝓕
    syn match texMathSymbol '\\math\(cal\|scr\){G}' contained conceal cchar=𝓖
    syn match texMathSymbol '\\math\(cal\|scr\){H}' contained conceal cchar=𝓗
    syn match texMathSymbol '\\math\(cal\|scr\){I}' contained conceal cchar=𝓘
    syn match texMathSymbol '\\math\(cal\|scr\){J}' contained conceal cchar=𝓙
    syn match texMathSymbol '\\math\(cal\|scr\){K}' contained conceal cchar=𝓚
    syn match texMathSymbol '\\math\(cal\|scr\){L}' contained conceal cchar=𝓛
    syn match texMathSymbol '\\math\(cal\|scr\){M}' contained conceal cchar=𝓜
    syn match texMathSymbol '\\math\(cal\|scr\){N}' contained conceal cchar=𝓝
    syn match texMathSymbol '\\math\(cal\|scr\){O}' contained conceal cchar=𝓞
    syn match texMathSymbol '\\math\(cal\|scr\){P}' contained conceal cchar=𝓟
    syn match texMathSymbol '\\math\(cal\|scr\){Q}' contained conceal cchar=𝓠
    syn match texMathSymbol '\\math\(cal\|scr\){R}' contained conceal cchar=𝓡
    syn match texMathSymbol '\\math\(cal\|scr\){S}' contained conceal cchar=𝓢
    syn match texMathSymbol '\\math\(cal\|scr\){T}' contained conceal cchar=𝓣
    syn match texMathSymbol '\\math\(cal\|scr\){U}' contained conceal cchar=𝓤
    syn match texMathSymbol '\\math\(cal\|scr\){V}' contained conceal cchar=𝓥
    syn match texMathSymbol '\\math\(cal\|scr\){W}' contained conceal cchar=𝓦
    syn match texMathSymbol '\\math\(cal\|scr\){X}' contained conceal cchar=𝓧
    syn match texMathSymbol '\\math\(cal\|scr\){Y}' contained conceal cchar=𝓨
    syn match texMathSymbol '\\math\(cal\|scr\){Z}' contained conceal cchar=𝓩

    syn spell toplevel
endif
