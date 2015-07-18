" Author: Francis Courchesne <fcourchesne@gmail.com>
" Website: https://github.com/fcourchesne/ViZuki
" Note: Based on the Zukitre GTK theme by lassekongo83

" Fix cursor in terminal
set fillchars+=vert:\ 

" Some of the colors used below:
" Background = 		'#D6D6D6' 		" Terminal: none
" Black = 			'#222222' 		" Terminal: 232
" Red = 			'#FF0009'       " Terminal: 160
" Orange = 			'#FF5400' 		" Terminal: 202
" Green =			'#006633' 		" Terminal: 251
" Purple = 			'#B907CE' 		" Terminal: 92
" Grey = 			'#8C8C8C' 		" Terminal: 249
" White = 			'#FFFFFF' 		" Terminal: 255
" Pink = 			'#FF00C1' 		" Terminal: 199

" LightBlue = 		'#D0E7FF' 		" Terminal: 153
" LightYellow = 	'#FDFD74' 		" Terminal: 229
" LightGrey = 		'#FBFBFB' 		" Terminal: 253

" DarkGrey = 		'#666666' 		" Terminal: 245
" DarkGreen = 		'#006633' 		" Terminal: 22
" DarkBlue = 		'#375CF5' 		" Terminal: 26
" DarkPink = 		'#FF009D' 		" Terminal: 200
" DarkRed = 		'#BB3355' 		" Terminal: 88

" DiffRemovedBg= 	'#FFD2DD' 		" Terminal: 225
" DiffAddedBg= 		'#DAFFD3' 		" Terminal: 121
" DiffModifiedBg= 	'#D3EEFF' 		" Terminal: 117

hi clear
if exists("syntax_on")
    syntax reset
endif
set background=light
let colors_name = "vizuki"


hi Normal 			guifg=Black 	guibg=#D6D6D6 		gui=none 			ctermfg=232		ctermbg=252
hi Title         	guifg=#FF5400 	guibg=#D6D6D6 		gui=none 			ctermfg=202 	ctermbg=none
hi Cursor        	guifg=#D6D6D6 	guibg=#004B9A 		gui=none 			ctermfg=232
hi CursorLine 						guibg=#EAEAEA 		gui=none 			ctermbg=none 	ctermbg=254 	cterm=none
hi LineNr        	guifg=#8C8C8C 	guibg=#D6D6D6 		gui=none 			ctermfg=249
hi CursorLineNr    	guifg=#FF5400 	guibg=#D6D6D6 		gui=bold 			ctermfg=202 					cterm=bold
hi Visual 							guibg=#B1CAE3 		gui=none 			ctermfg=none	ctermbg=153
hi NonText 			guifg=#FBFBFB 	guibg=#D6D6D6 	 	gui=none 			ctermfg=253
"hi StatusLine 		guifg=Black 	guibg=#D6D6D6 		gui=none 			ctermfg=232
hi StatusLine 		ctermbg=160
hi StatusLineNC 	guifg=#666666 	guibg=#D6D6D6 		gui=none 			ctermfg=245

hi VertSplit 		guifg=#A0A0A0 	guibg=#C7C7C7		gui=none 			ctermfg=251
hi ModeMsg 			guifg=#FBFBFB 	guibg=#FF5400 		gui=none 			ctermfg=253 	ctermbg=202
hi ErrorMsg 		guifg=#FFFFFF 	guibg=#FF0009 		gui=bold 			ctermfg=255 	ctermbg=160
"hi Error         	guifg=#FF0009 	guibg=#D6D6D6		gui=bold 			ctermfg=160		ctermbg=none	cterm=bold
hi Error         	guifg=#FF0009 	guibg=#D6D6D6		gui=bold 			ctermfg=160		ctermbg=228 cterm=none
hi Folded        	guifg=#666666 	guibg=#DEDEDE 		gui=none 			ctermfg=242 	ctermbg=254
hi FoldColumn    	guifg=#B2B2B2 	guibg=#D6D6D6 		gui=none 			ctermfg=249 	ctermbg=none 	cterm=none
hi ColorColumn 						guibg=#FBFBFB 		gui=none 			ctermfg=none	ctermbg=254
hi MatchParen 						guibg=#F9A658 		gui=none 							ctermbg=208
hi Search 							guibg=#F6B645 		gui=none 			ctermfg=none 	ctermbg=215
hi IncSearch 						guibg=#F6B645 		gui=bold 			ctermfg=none 	ctermbg=215
hi Comment 			guifg=#8C8C8C 	guibg=#CDCDCD 		gui=italic 			ctermfg=245 	ctermbg=252
hi Todo 			guifg=#FFFFFF 	guibg=#949494		gui=bold 			ctermfg=255 	ctermbg=246 	cterm=bold
hi Operator 		guifg=#375CF5											ctermfg=26
hi Identifier 		guifg=Black 											ctermfg=232 	ctermbg=none
" hi Statement 		guifg=#FF5400 						gui=bold 			ctermfg=202 					cterm=bold
hi Statement 		ctermfg=232 cterm=bold
hi Type 			guifg=#375CF5 						gui=none 			ctermfg=26 						cterm=none
hi Constant 		guifg=#B907CE 											ctermfg=92
hi Conditional 		guifg=#006633 						gui=bold			ctermfg=22 						cterm=bold
hi Delimiter 		guifg=Black 											ctermfg=232
hi PreProc 			guifg=#006633 											ctermfg=22
hi Special 			guifg=#006633 											ctermfg=22
hi Keyword 			guifg=#375CF5 											ctermfg=26
hi SpellBad 		                                                        ctermfg=15      ctermbg=160
hi SpellCap 						guibg=#375CF5										 	ctermbg=63

" Prompt menu
hi Pmenu 			guifg=#FBFBFB 	guibg=#666666 		gui=none 			ctermfg=253		ctermbg=241
hi PmenuSel 		guifg=#FFFFFF 	guibg=#9212D6 		gui=bold 			ctermfg=255 	ctermbg=92 		cterm=bold
hi PmenuSbar 		guifg=#8C8C8C 	guibg=#FFFFFF 		gui=bold 			ctermfg=249		ctermbg=200
hi PmenuThumb 		guifg=#FBFBFB 	guibg=#FFFFFF 		gui=bold 			ctermfg=253		ctermbg=200

" GitGutter
hi SignColumn 	 					guibg=#D6D6D6 		gui=none			ctermfg=none 	ctermbg=none

" Synatastic
hi SyntasticErrorLine 				 										ctermfg=160     ctermbg=228
hi SyntasticWarning                                                         ctermfg=226

" Diff
hi DiffAdd         	guibg=#DAFFD3 						gui=none 			ctermfg=none 	ctermbg=121
hi DiffChange 		guibg=#D3EEFF 						gui=none 			ctermfg=none 	ctermbg=117
hi DiffText        	guifg=#FF0009	guibg=#7DCEFF 		gui=none 			ctermfg=160 	ctermbg=75
hi DiffDelete 		guifg=#8C8C8C 	guibg=#FFD2DD 		gui=none 			ctermfg=249 	ctermbg=225

" GitGutter
hi GitGutterAdd 	guifg=#28A11A
hi GitGutterChange 	guifg=#4AA2FF
hi GitGutterDelete 	guifg=#FF0009

" Easymotion
hi EasyMotionTarget 		guifg=#DF0000 				gui=bold			ctermfg=160 					cterm=bold
hi EasyMotionShade 			guifg=#BCBCBC 									ctermfg=249
hi EasyMotionTarget2First 	guifg=#FF0087 									ctermfg=198 					ctermbg=none 
hi EasyMotionTarget2Second 	guifg=#DF0000 									ctermfg=160 					ctermbg=none 

" Tab line
hi TabLineFill 		guifg=#222222 	guibg=#222222 							ctermfg=232						ctermbg=none
hi TabLine 			guifg=#666666 	guibg=#222222 		gui=none 			ctermfg=245

"hi Function gui=bold cterm=bold
hi Function ctermfg=92 cterm=bold

hi link goDeclType 		Type
hi link goType 			Type
hi link goStruct 		Function
hi link goStructDef		Function
hi link goFunction 		Function
hi link goDirective 	Statement
hi link goConditional 	Statement
hi link goComplexes   	Statement
hi link goLabel       	Statement
hi link goDeclaration 	Statement
hi link goRepeat 		Statement
hi link goStatement 	Statement
hi link goTodo 			Todo
hi link goComment 		Comment 
hi link goConstants 	Constant



hi link Function        Normal
hi link Character       Constant
hi link String          Constant
hi link Boolean         Constant
hi link Number          Constant
hi link Float           Number
hi link Repeat          Conditional
hi link Label           Statement
hi link Exception       Statement
hi link Include         Normal
hi link Define          PreProc
hi link Macro           PreProc
hi link PreCondit       PreProc
hi link StorageClass    Type
hi link Structure       Type
hi link Typedef         Type
hi link Tag             Special
hi link SpecialChar     Special
hi link SpecialComment  Special
hi link Debug           Special

