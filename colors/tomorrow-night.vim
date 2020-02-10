set background=dark
" hi clear
syntax reset

let g:colors_name = "Tomorrow-Night"
hi Normal guifg=#c5c8c6 ctermfg=250 guibg=#303030 ctermbg=235
hi LineNr guifg=#585858 ctermfg=239
hi NonText guifg=#585858 ctermfg=239
hi SpecialKey guifg=#585858 ctermfg=239
hi Search guifg=#303030 ctermfg=235 guibg=#f0c674 ctermbg=222
hi TabLine guifg=#c5c8c6 ctermfg=250 guibg=#303030 ctermbg=235 gui=reverse cterm=reverse
hi StatusLine guifg=#5e5e5e ctermfg=240 guibg=#f0c674 ctermbg=222 gui=reverse cterm=reverse
hi StatusLineNC guifg=#5e5e5e ctermfg=240 guibg=#c5c8c6 ctermbg=250 gui=reverse cterm=reverse
hi VertSplit guifg=#5e5e5e ctermfg=240 guibg=#5e5e5e ctermbg=240 gui=none cterm=none
hi Visual guibg=#585858 ctermbg=239
hi Directory guifg=#81a2be ctermfg=109
hi ModeMsg guifg=#b5bd68 ctermfg=143
hi MoreMsg guifg=#b5bd68 ctermfg=143
hi Question guifg=#b5bd68 ctermfg=143
hi WarningMsg guifg=#cc6666 ctermfg=167
hi MatchParen guibg=#585858 ctermbg=239
hi Folded guifg=#969896 ctermfg=245 guibg=#303030 ctermbg=235
hi FoldColumn guibg=#303030 ctermbg=235
hi CursorLine guibg=#3a3a3a ctermbg=236 gui=none cterm=none
hi CursorColumn guibg=#3a3a3a ctermbg=236 gui=none cterm=none
hi PMenu guifg=#c5c8c6 ctermfg=250 guibg=#585858 ctermbg=239 gui=none cterm=none
hi PMenuSel guifg=#c5c8c6 ctermfg=250 guibg=#585858 ctermbg=239 gui=reverse cterm=reverse
hi SignColumn guibg=#303030 ctermbg=235 gui=none cterm=none
hi ColorColumn guibg=#3a3a3a ctermbg=236 gui=none cterm=none
hi Conceal guifg=#c5c8c6 ctermfg=250 guibg=#303030 ctermbg=235
hi Comment guifg=#969896 ctermfg=245
hi Todo guifg=#969896 ctermfg=245 guibg=#303030 ctermbg=235
hi Title guifg=#969896 ctermfg=245
hi Identifier guifg=#cc6666 ctermfg=167 gui=none cterm=none
hi Statement guifg=#c5c8c6 ctermfg=250
hi Conditional guifg=#c5c8c6 ctermfg=250
hi Repeat guifg=#c5c8c6 ctermfg=250
hi Structure guifg=#b294bb ctermfg=139
hi Function guifg=#81a2be ctermfg=109
hi Constant guifg=#de935f ctermfg=173
hi String guifg=#b5bd68 ctermfg=143
hi Special guifg=#c5c8c6 ctermfg=2
hi PreProc guifg=#b294bb ctermfg=139
hi Operator guifg=#8abeb7 ctermfg=109 gui=none cterm=none
hi Type guifg=#81a2be ctermfg=109 gui=none cterm=none
hi Define guifg=#b294bb ctermfg=139 gui=none cterm=none
hi Include guifg=#81a2be ctermfg=109
hi vimCommand guifg=#cc6666 ctermfg=167 gui=none cterm=none
hi cType guifg=#f0c674 ctermfg=222
hi cStorageClass guifg=#b294bb ctermfg=139
hi cConditional guifg=#b294bb ctermfg=139
hi cLabel guifg=#b294bb ctermfg=139
hi cRepeat guifg=#b294bb ctermfg=139
hi cStatement guifg=#8abeb7 ctermfg=109
hi cTodo guifg=#f0c674 ctermfg=222 guibg=#cc6666 ctermbg=167
hi cppCast guifg=#8abeb7 ctermfg=109
hi cppOperator guifg=#8abeb7 ctermfg=109
hi cppType guifg=#f0c674 ctermfg=222
hi cppExceptions guifg=#f0c674 ctermfg=222
hi cppBoolean guifg=#de935f ctermfg=173
hi cppStructure guifg=#b294bb ctermfg=139
hi cppAccess guifg=#b294bb ctermfg=139
hi cppStatement guifg=#8abeb7 ctermfg=109
hi cppExceptions guifg=#b294bb ctermfg=139
hi phpVarSelector guifg=#cc6666 ctermfg=167
hi phpKeyword guifg=#b294bb ctermfg=139
hi phpRepeat guifg=#b294bb ctermfg=139
hi phpConditional guifg=#b294bb ctermfg=139
hi phpStatement guifg=#b294bb ctermfg=139
hi phpMemberSelector guifg=#c5c8c6 ctermfg=250
hi rubySymbol guifg=#b5bd68 ctermfg=143
hi rubyConstant guifg=#f0c674 ctermfg=222
hi rubyAttribute guifg=#81a2be ctermfg=109
hi rubyInclude guifg=#81a2be ctermfg=109
hi rubyLocalVariableOrMethod guifg=#de935f ctermfg=173
hi rubyCurlyBlock guifg=#de935f ctermfg=173
hi rubyStringDelimiter guifg=#b5bd68 ctermfg=143
hi rubyInterpolationDelimiter guifg=#de935f ctermfg=173
hi rubyConditional guifg=#b294bb ctermfg=139
hi rubyRepeat guifg=#b294bb ctermfg=139
hi pythonInclude guifg=#b294bb ctermfg=139
hi pythonStatement guifg=#b294bb ctermfg=139
hi pythonConditional guifg=#b294bb ctermfg=139
hi pythonRepeat guifg=#b294bb ctermfg=139
hi pythonFunction guifg=#81a2be ctermfg=109
hi pythonException guifg=#b294bb ctermfg=139
hi pythonOperator guifg=#b294bb ctermfg=139
hi javaScriptBraces guifg=#c5c8c6 ctermfg=250
hi javaScriptFunction guifg=#b294bb ctermfg=139
hi javaScriptConditional guifg=#b294bb ctermfg=139
hi javaScriptRepeat guifg=#b294bb ctermfg=139
hi javaScriptNumber guifg=#de935f ctermfg=173
hi javaScriptMember guifg=#de935f ctermfg=173
hi htmlTag guifg=#cc6666 ctermfg=167
hi htmlTagName guifg=#cc6666 ctermfg=167
hi htmlArg guifg=#cc6666 ctermfg=167
hi htmlScriptTag guifg=#cc6666 ctermfg=167
hi diffAdded guifg=#b5bd68 ctermfg=143
hi diffRemoved guifg=#cc6666 ctermfg=167
