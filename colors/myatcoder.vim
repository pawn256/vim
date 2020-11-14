set background=light

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "myatcoder"
  

" Vim >= 7.0 specific colours
if version >= 700
  hi CursorLine   cterm=NONE ctermfg=NONE ctermbg=NONE
  hi CursorColumn ctermbg=236
  hi MatchParen   cterm=NONE  ctermfg=016 ctermbg=010
  hi Pmenu        ctermfg=016 ctermbg=255
  hi PmenuSel     ctermfg=020 ctermbg=253
endif

" General colours
hi Cursor       ctermfg=016 ctermbg=016 " the character under the cursor |
hi Normal       ctermfg=016 ctermbg=231
hi NonText      ctermfg=231 ctermbg=231
hi LineNr       ctermfg=241 ctermbg=NONE
hi StatusLine   ctermfg=249 ctermbg=238 
hi StatusLineNC ctermfg=241 ctermbg=249
hi VertSplit    ctermfg=255 ctermbg=255       " Vertical Split Line
hi Folded       ctermbg=238 ctermfg=248
hi FoldColumn   cterm=NONE ctermbg=NONE
hi Title        ctermfg=016 
hi Visual       ctermbg=187
hi SpecialKey   ctermfg=018 ctermbg=153
hi Error        ctermfg=231 ctermbg=124

" Syntax highlighting
hi Comment      ctermfg=088
hi Todo         ctermfg=009 
hi Constant     ctermfg=016
hi String       ctermfg=028  " if not specified, equals Constant
hi Character    ctermfg=028  " 'c','\n' if not specified, equals Constant
hi Number       ctermfg=024  " 234,0xff. if not specified, equals Constant
hi Boolean      ctermfg=018  " TRUE,false. if not specified, equals Constant
hi Float        ctermfg=024  " 2.3e10. if not specified, equals Constant
hi Identifier   ctermfg=018 " any variable name
hi Function     ctermfg=016 " function name
hi Statement    ctermfg=018
hi Conditional  ctermfg=018 " if, then, else, endif, switch, etc. if not specified, equals Statement
hi Repeat       ctermfg=018 " for, do, while, etc. if not specified, equals Statement
"hi Label        ctermfg=018 " case, default, etc. if not specified, equals Statement
"hi Operator     ctermfg=064 " 'sizeof','+', '*', etc. if not specified, equals Statement
"hi Exception    ctermfg=018 " 	try, catch, throw. if not specified, equals Statement
hi Keyword      ctermfg=018 " any other keyword. if not specified, equals Statement
"hi PreProc      ctermfg=001
"hi link PreProc     Normal
hi Define       ctermfg=016 " #define if not specified,equals PreProc
hi link cDefine Define
hi Include      ctermfg=088 " #include  if not specified,equals PreProc
hi PreCondit    ctermfg=088 " #if,#else,#endif etc. if not specified,equals PreProc
hi Type         ctermfg=018 " int, long, char, etc. 
"hi StorageClass ctermfg=055 " static, register, volatile, etc. if not specified, equals Type
"hi Structure    ctermfg=055 " struct, union, enum, etc. if not specified, equals Type
"hi Typedef      ctermfg=055 " A typedef if not specified, equals Type
hi Special      ctermfg=028 " any special symbol
"hi SpecialChar	" special character in a constant
"hi Tag	" you can use CTRL-] on this
"hi Delimiter	" character that needs attention
"hi SpecialComment	" special things inside a comment
"hi Debug	" debugging statements
"hi Underlined	" text that stands out, HTML links
hi Search       cterm=underline ctermbg=228 ctermfg=236
hi Delimiter    ctermfg=018
hi parens       ctermfg=064


" Python
hi pythonBuiltin            ctermfg=018
hi pythonBuiltinFunc        ctermfg=018
hi pythonBuiltinObj         ctermfg=030
hi pythonCustomFunc         ctermfg=018
hi pythonDecorator          ctermfg=055
hi pythonInclude            ctermfg=018  " Python imports, etc
hi pythonInstances          ctermfg=018  
hi pythonStatement          ctermfg=018
hi pythonConditional        ctermfg=018
hi pythonRepeat	            ctermfg=018
hi pythonOperator           ctermfg=018
hi pythonException          ctermfg=018
hi pythonBuiltinConstant    ctermfg=018
hi pythonBoolean            ctermfg=018
hi pythonAttribute          ctermfg=130
hi pythonString             ctermfg=028
hi pythonQuotes             ctermfg=028
hi docstring                ctermfg=160


autocmd Filetype python call SetColors()
function! SetColors()
    syn keyword pythonBoolean     True False
    syn keyword pythonStatement   as nonlocal None
    syn keyword pythonInstances   self cls
    syn match pythonStatement /,/
    syn match docstring /"""\_.\{-}"""/
endfunction

" Javascript
hi javaScriptReserved ctermfg=018
hi javaScriptNumber ctermfg=020
hi javaScriptFuncArg ctermfg=055
hi javascriptBlock ctermfg=030
hi javascriptIdentifier ctermfg=018
hi javascriptBOMHistoryProp ctermfg=016
hi javascriptObjectLabel ctermfg=016


" HTML
hi htmlArg ctermfg=030
hi htmlString ctermfg=020
hi htmlComment ctermfg=28
hi link htmlCommentPart htmlComment
hi htmlTag ctermfg=244
hi link htmlTagN htmlTag
hi link htmlEndTag htmlTag

" NerdTree
hi NerdTreeDirSlash cterm=NONE ctermfg=231 ctermbg=231
hi NerdTreeCWD cterm=NONE ctermfg=241 ctermbg=NONE

hi link htmlEndTag htmlTag

" NerdTree
hi NerdTreeDirSlash cterm=NONE ctermfg=241 ctermbg=231
hi NerdTreeCWD cterm=NONE ctermfg=241 ctermbg=NONE

" C++
hi myspsym ctermfg=088
hi parens ctermfg=064
autocmd Syntax c,cpp syn match myspsym /#define/
autocmd Syntax c,cpp syn match myspsym /#undef/
"autocmd Syntax c,cpp syn match parens /[(){}\[\]&!\^,.;:%=<>|]/
autocmd Syntax * syn match parens /[(){}\[\]&!\^,.;:%=<>|]/
autocmd Syntax * syn match parens /[+]/
autocmd Syntax * syn match parens /[-]/
autocmd Syntax * syn match parens /[*]/
autocmd Syntax * syn match parens /\/\([\/\*]\)\@!/
"autocmd Syntax * syn match parens /\/[^\*\/]/
"autocmd BufEnter * call MySetColorsInit()
function! MySetColorsInit()
    let b:Vm_sign_number = 1
    let i = 1
    let ln = line("$")
    while i <= ln
        "exe 'sign define SignSymbol linehl=SignColor texthl=SignColor'
        if i % 2 == 1
            "exe 'sign define SignSymbol0 linehl=SignColor0 texthl=SignColor0'
            "exe 'sign place ' . i . ' line=' . i . ' name=SignSymbol0 buffer=' . winbufnr(0)
            "exe 'hi SignColor0 ctermbg=255'
        else
            exe 'sign define SignSymbol1 linehl=SignColor1 texthl=SignColor1'
            exe 'sign place ' . i . ' line=' . i . ' name=SignSymbol1 buffer=' . winbufnr(0)
            exe 'hi SignColor1 ctermbg=254'
        endif
        "let vsn              = b:Vm_sign_number
        "let b:Vm_sign_number = b:Vm_sign_number + 1
        if i % 2 == 1
            let i += 1
        else
            let i += 2
        endif
    endwhile
endfunction

"autocmd CursorMoved * call MySetColorsMain()
"autocmd CursorMovedI * call MySetColorsMain()
"autocmd TextChanged * call MySetColorsMain()
"autocmd TextChangedI * call MySetColorsMain()
let g:mysetcolorln = line("$")
function! MySetColorsMain()
    if g:mysetcolorln != line("$")
        let g:mysetcolorln = line("$")
        let winend = line("w$")
        let winstart = line("w0")

        "if winstart == 1
        "    let i = 1
        "else
        "    let i = g:mysetcolorln - 1
        "endif
        let i = winstart

        exe 'sign define SignSymbol0 linehl=SignColor0 texthl=SignColor0'
        exe 'sign place 1 line=1 name=SignSymbol0 buffer=' . winbufnr(0)
        exe 'hi SignColor0 ctermbg=255'
        while i <= winend
            if i % 2 == 0
                exe 'sign unplace '. i
                exe 'sign define SignSymbol1 linehl=SignColor1 texthl=SignColor1'
                exe 'sign place ' . i . ' line=' . i . ' name=SignSymbol1 buffer=' . winbufnr(0)
                exe 'hi SignColor1 ctermbg=254'
            else
                exe 'sign unplace '. i
                exe 'sign define SignSymbol0 linehl=SignColor0 texthl=SignColor0'
                exe 'sign place ' . i . ' line=' . i . ' name=SignSymbol0 buffer=' . winbufnr(0)
                exe 'hi SignColor1 ctermbg=255'
            endif
            let i += 1
        endwhile
        if g:mysetcolorln % 2 == 0
                exe 'sign unplace '. g:mysetcolorln
                exe 'sign define SignSymbol1 linehl=SignColor1 texthl=SignColor1'
                exe 'sign place ' . g:mysetcolorln . ' line=' . g:mysetcolorln . ' name=SignSymbol1 buffer=' . winbufnr(0)
                exe 'hi SignColor1 ctermbg=254'
        else
                exe 'sign unplace '. g:mysetcolorln
                exe 'sign define SignSymbol0 linehl=SignColor0 texthl=SignColor0'
                exe 'sign place ' . g:mysetcolorln . ' line=' . g:mysetcolorln . ' name=SignSymbol0 buffer=' . winbufnr(0)
                exe 'hi SignColor1 ctermbg=255'
        endif
        ""exe 'hi SignColor0 ctermbg=255'
        "exe 'hi SignColor1 ctermbg=254'
        "if i % 2 == 1
        "    "exe 'sign define SignSymbol0 linehl=SignColor0 texthl=SignColor0'
        "    "exe 'sign place ' . i . ' line=' . i . ' name=SignSymbol0 buffer=' . winbufnr(0)
        "    "exe 'hi SignColor0 ctermbg=255'
        "else
        "    exe 'sign define SignSymbol1 linehl=SignColor1 texthl=SignColor1'
        "    exe 'sign place ' . i . ' line=' . i . ' name=SignSymbol1 buffer=' . winbufnr(0)
        "    exe 'hi SignColor1 ctermbg=254'
        "endif
        ""while i <= g:mysetcolorln+5
        ""    exe 'sign unplace '. i
        ""    exe 'sign define SignSymbol' . i . ' linehl=SignColor' . i . ' texthl=SignColor' . i 
        ""    exe 'sign place ' . i . ' line=' . i . ' name=SignSymbol' . i . ' buffer=' . winbufnr(0)
        ""    if i % 2 == 1
        ""        exe 'hi SignColor' . i . ' ctermbg=255'
        ""    else
        ""        exe 'hi SignColor' . i . ' ctermbg=254'
        ""    endif
        ""    let i += 1
        ""endwhile
    endif
endfunction

"sy region par1 matchgroup=par1 /(/
" if nest
"sy region par2 matchgroup=par2 start=/(/ end=/)/ contains=par3 contained
"sy region par3 matchgroup=par3 start=/(/ end=/)/ contains=par1 contained
"hi par1 ctermfg=red guifg=red
" if nest.
"hi par2 ctermfg=blue guifg=blue
"hi par3 ctermfg=darkgreen guifg=darkgreen
""autocmd Syntax * syn match parens /\/\(\/\)\@!/
"hi Oddlines ctermbg=yellow guibg=#FFFF99
"hi Evenlines ctermbg=magenta guibg=#FFCCFF
""autocmd Syntax * syn region msSpeech start=/.*/ end=/.*/
""hi msSpeech ctermbg=088 guifg=#000088
"autocmd Syntax * syn match Oddlines "^.*$" contains=ALL nextgroup=Evenlines skipnl
"autocmd Syntax * syn match Evenlines "^.*$" contains=ALL nextgroup=Oddlines skipnl

