hi Statement ctermfg=109

if has('conceal')
    " A few omissions in the core tex.vim
    syn match texMathSymbol '\\langle\>\s*' contained conceal cchar=⟨
    syn match texMathSymbol '\s*\\rangle\>' contained conceal cchar=⟩
    syn match texMathSymbol '\\\\' contained conceal cchar=⤦
    syn match texMathSymbol '\\sqrt' contained conceal cchar=√

    " Simple number super/sub-scripts
    syn match texMathSymbol '\^0' contained conceal cchar=⁰
    syn match texMathSymbol '\^1' contained conceal cchar=¹
    syn match texMathSymbol '\^2' contained conceal cchar=²
    syn match texMathSymbol '\^3' contained conceal cchar=³
    syn match texMathSymbol '\^4' contained conceal cchar=⁴
    syn match texMathSymbol '\^5' contained conceal cchar=⁵
    syn match texMathSymbol '\^6' contained conceal cchar=⁶
    syn match texMathSymbol '\^7' contained conceal cchar=⁷
    syn match texMathSymbol '\^8' contained conceal cchar=⁸
    syn match texMathSymbol '\^9' contained conceal cchar=⁹

    syn match texMathSymbol '\^a' contained conceal cchar=ᵃ
    syn match texMathSymbol '\^b' contained conceal cchar=ᵇ
    syn match texMathSymbol '\^c' contained conceal cchar=ᶜ
    syn match texMathSymbol '\^d' contained conceal cchar=ᵈ
    syn match texMathSymbol '\^e' contained conceal cchar=ᵉ
    syn match texMathSymbol '\^f' contained conceal cchar=ᶠ
    syn match texMathSymbol '\^g' contained conceal cchar=ᵍ
    syn match texMathSymbol '\^h' contained conceal cchar=ʰ
    syn match texMathSymbol '\^i' contained conceal cchar=ⁱ
    syn match texMathSymbol '\^j' contained conceal cchar=ʲ
    syn match texMathSymbol '\^k' contained conceal cchar=ᵏ
    syn match texMathSymbol '\^l' contained conceal cchar=ˡ
    syn match texMathSymbol '\^m' contained conceal cchar=ᵐ
    syn match texMathSymbol '\^n' contained conceal cchar=ⁿ
    syn match texMathSymbol '\^o' contained conceal cchar=ᵒ
    syn match texMathSymbol '\^p' contained conceal cchar=ᵖ
    syn match texMathSymbol '\^r' contained conceal cchar=ʳ
    syn match texMathSymbol '\^s' contained conceal cchar=ˢ
    syn match texMathSymbol '\^t' contained conceal cchar=ᵗ
    syn match texMathSymbol '\^u' contained conceal cchar=ᵘ
    syn match texMathSymbol '\^v' contained conceal cchar=ᵛ
    syn match texMathSymbol '\^w' contained conceal cchar=ʷ
    syn match texMathSymbol '\^x' contained conceal cchar=ˣ
    syn match texMathSymbol '\^y' contained conceal cchar=ʸ
    syn match texMathSymbol '\^z' contained conceal cchar=ᶻ
    syn match texMathSymbol '\^A' contained conceal cchar=ᴬ
    syn match texMathSymbol '\^B' contained conceal cchar=ᴮ
    syn match texMathSymbol '\^D' contained conceal cchar=ᴰ
    syn match texMathSymbol '\^E' contained conceal cchar=ᴱ
    syn match texMathSymbol '\^G' contained conceal cchar=ᴳ
    syn match texMathSymbol '\^H' contained conceal cchar=ᴴ
    syn match texMathSymbol '\^I' contained conceal cchar=ᴵ
    syn match texMathSymbol '\^J' contained conceal cchar=ᴶ
    syn match texMathSymbol '\^K' contained conceal cchar=ᴷ
    syn match texMathSymbol '\^L' contained conceal cchar=ᴸ
    syn match texMathSymbol '\^M' contained conceal cchar=ᴹ
    syn match texMathSymbol '\^N' contained conceal cchar=ᴺ
    syn match texMathSymbol '\^O' contained conceal cchar=ᴼ
    syn match texMathSymbol '\^P' contained conceal cchar=ᴾ
    syn match texMathSymbol '\^R' contained conceal cchar=ᴿ
    syn match texMathSymbol '\^T' contained conceal cchar=ᵀ
    syn match texMathSymbol '\^U' contained conceal cchar=ᵁ
    syn match texMathSymbol '\^W' contained conceal cchar=ᵂ

    syn match texMathSymbol '_a' contained conceal cchar=ₐ
    syn match texMathSymbol '_e' contained conceal cchar=ₑ
    syn match texMathSymbol '_h' contained conceal cchar=ₕ
    syn match texMathSymbol '_i' contained conceal cchar=ᵢ
    syn match texMathSymbol '_j' contained conceal cchar=ⱼ
    syn match texMathSymbol '_k' contained conceal cchar=ₖ
    syn match texMathSymbol '_l' contained conceal cchar=ₗ
    syn match texMathSymbol '_m' contained conceal cchar=ₘ
    syn match texMathSymbol '_n' contained conceal cchar=ₙ
    syn match texMathSymbol '_o' contained conceal cchar=ₒ
    syn match texMathSymbol '_p' contained conceal cchar=ₚ
    syn match texMathSymbol '_r' contained conceal cchar=ᵣ
    syn match texMathSymbol '_s' contained conceal cchar=ₛ
    syn match texMathSymbol '_t' contained conceal cchar=ₜ
    syn match texMathSymbol '_u' contained conceal cchar=ᵤ
    syn match texMathSymbol '_v' contained conceal cchar=ᵥ
    syn match texMathSymbol '_r' contained conceal cchar=ᵣ
    syn match texMathSymbol '_x' contained conceal cchar=ₓ

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
    hi texBoldMathText cterm=bold gui=bold
    syn cluster texMathZoneGroup add=texBoldMathText

    " Wenzel's bold matrix and vector aliases
    syn region texBoldMathText matchgroup=texStatement start='\\v\([a-z]\>\)\@=' end='\>' concealends containedin=ALL
    syn region texBoldMathText matchgroup=texStatement start='\\m\([A-Z]\>\)\@=' end='\>' concealends containedin=ALL

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
    syn match texMathSymbol '\\math\(cal\|scr\|pzc\){A}' contained conceal cchar=𝓐
    syn match texMathSymbol '\\math\(cal\|scr\|pzc\){B}' contained conceal cchar=𝓑
    syn match texMathSymbol '\\math\(cal\|scr\|pzc\){C}' contained conceal cchar=𝓒
    syn match texMathSymbol '\\math\(cal\|scr\|pzc\){D}' contained conceal cchar=𝓓
    syn match texMathSymbol '\\math\(cal\|scr\|pzc\){E}' contained conceal cchar=𝓔
    syn match texMathSymbol '\\math\(cal\|scr\|pzc\){F}' contained conceal cchar=𝓕
    syn match texMathSymbol '\\math\(cal\|scr\|pzc\){G}' contained conceal cchar=𝓖
    syn match texMathSymbol '\\math\(cal\|scr\|pzc\){H}' contained conceal cchar=𝓗
    syn match texMathSymbol '\\math\(cal\|scr\|pzc\){I}' contained conceal cchar=𝓘
    syn match texMathSymbol '\\math\(cal\|scr\|pzc\){J}' contained conceal cchar=𝓙
    syn match texMathSymbol '\\math\(cal\|scr\|pzc\){K}' contained conceal cchar=𝓚
    syn match texMathSymbol '\\math\(cal\|scr\|pzc\){L}' contained conceal cchar=𝓛
    syn match texMathSymbol '\\math\(cal\|scr\|pzc\){M}' contained conceal cchar=𝓜
    syn match texMathSymbol '\\math\(cal\|scr\|pzc\){N}' contained conceal cchar=𝓝
    syn match texMathSymbol '\\math\(cal\|scr\|pzc\){O}' contained conceal cchar=𝓞
    syn match texMathSymbol '\\math\(cal\|scr\|pzc\){P}' contained conceal cchar=𝓟
    syn match texMathSymbol '\\math\(cal\|scr\|pzc\){Q}' contained conceal cchar=𝓠
    syn match texMathSymbol '\\math\(cal\|scr\|pzc\){R}' contained conceal cchar=𝓡
    syn match texMathSymbol '\\math\(cal\|scr\|pzc\){S}' contained conceal cchar=𝓢
    syn match texMathSymbol '\\math\(cal\|scr\|pzc\){T}' contained conceal cchar=𝓣
    syn match texMathSymbol '\\math\(cal\|scr\|pzc\){U}' contained conceal cchar=𝓤
    syn match texMathSymbol '\\math\(cal\|scr\|pzc\){V}' contained conceal cchar=𝓥
    syn match texMathSymbol '\\math\(cal\|scr\|pzc\){W}' contained conceal cchar=𝓦
    syn match texMathSymbol '\\math\(cal\|scr\|pzc\){X}' contained conceal cchar=𝓧
    syn match texMathSymbol '\\math\(cal\|scr\|pzc\){Y}' contained conceal cchar=𝓨
    syn match texMathSymbol '\\math\(cal\|scr\|pzc\){Z}' contained conceal cchar=𝓩

    " SIGGRAPH style shortcite
    syn match  texRefZone		'\\shortcite' nextgroup=texRefOption,texCite
    syn match  texRefZone		'\\citeauthor' nextgroup=texRefOption,texCite

    "  AMS-Math Package Support:
    call TexNewMathZone("E","align",1)
    call TexNewMathZone("F","alignat",1)
    call TexNewMathZone("G","equation",1)
    call TexNewMathZone("H","flalign",1)
    call TexNewMathZone("I","gather",1)
    call TexNewMathZone("J","multline",1)
    call TexNewMathZone("K","xalignat",1)
    call TexNewMathZone("L","xxalignat",0)

    syn match texBadMath "\\end\s*{\s*\(align\|alignat\|equation\|flalign\|gather\|multline\|xalignat\|xxalignat\)\*\=\s*}"

    " Handle the minted environment
    au FileType tex syn region texZone start="\\begin{minted}" end="\\end{minted}" contains=@NoSpell

    syn spell toplevel
endif
