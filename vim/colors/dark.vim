" dark color scheme
" ********************************************************************************
" The following are the preferred 16 colors for your terminal
"           Colors      Bright Colors
" Black     #4E4E4E     #7C7C7C
" Red       #FF6C60     #FFB6B0
" Green     #A8FF60     #CEFFAB
" Yellow    #FFFFB6     #FFFFCB
" Blue      #96CBFE     #FFFFCB
" Magenta   #FF73FD     #FF9CFE
" Cyan      #C6C5FE     #DFDFFE
" White     #EEEEEE     #FFFFFF
" ********************************************************************************

set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "dark"

" hi Example                    guifg=NONE        guibg=NONE        gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE

" General colors
hi Cursor                       guifg=black       guibg=white       gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE
hi Error                        guifg=NONE        guibg=NONE        gui=undercurl ctermfg=white       ctermbg=red         cterm=NONE     guisp=#FF6C60 " undercurl color
hi ErrorMsg                     guifg=white       guibg=#FF6C60     gui=BOLD      ctermfg=white       ctermbg=red         cterm=NONE
hi Folded                       guifg=#a0a8b0     guibg=#384048     gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE
" hi Ignore                       guifg=gray        guibg=black       gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE
hi LineNr                       guifg=#3D3D3D     guibg=black       gui=NONE      ctermfg=darkgray    ctermbg=NONE        cterm=NONE
hi Normal                       guifg=#f6f3e8     guibg=black       gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE
hi NonText                      guifg=#070707     guibg=black       gui=NONE      ctermfg=black       ctermbg=NONE        cterm=NONE
hi PmenuSbar                    guifg=black       guibg=white       gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE
hi SpecialKey                   guifg=#808080     guibg=#343434     gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE
hi StatusLine                   guifg=#CCCCCC     guibg=#202020     gui=italic    ctermfg=white       ctermbg=darkgray    cterm=NONE
hi StatusLineNC                 guifg=black       guibg=#202020     gui=NONE      ctermfg=blue        ctermbg=darkgray    cterm=NONE
hi Title                        guifg=#f6f3e8     guibg=NONE        gui=bold      ctermfg=NONE        ctermbg=NONE        cterm=NONE
hi VertSplit                    guifg=#202020     guibg=#202020     gui=NONE      ctermfg=darkgray    ctermbg=darkgray    cterm=NONE
hi Visual                       guifg=NONE        guibg=#262D51     gui=NONE      ctermfg=NONE        ctermbg=darkgray    cterm=NONE
hi WarningMsg                   guifg=white       guibg=#FF6C60     gui=BOLD      ctermfg=white       ctermbg=red         cterm=NONE
hi WildMenu                     guifg=green       guibg=yellow      gui=NONE      ctermfg=black       ctermbg=yellow      cterm=NONE

" Message displayed in lower left, such as --INSERT--
hi ModeMsg                      guifg=black       guibg=#C6C5FE     gui=BOLD      ctermfg=black       ctermbg=cyan        cterm=BOLD

if version >= 700 " Vim 7.x specific colors
  hi CursorLine                 guifg=NONE        guibg=#121212     gui=NONE      ctermfg=NONE        ctermbg=235         cterm=NONE
  hi CursorColumn               guifg=NONE        guibg=#121212     gui=NONE      ctermfg=NONE        ctermbg=235         cterm=NONE
  hi ColorColumn                guifg=NONE        guibg=#121212     gui=NONE      ctermfg=NONE        ctermbg=235         cterm=NONE
  hi MatchParen                 guifg=#f6f3e8     guibg=#857b6f     gui=BOLD      ctermfg=white       ctermbg=darkgray    cterm=NONE
  hi Pmenu                      guifg=#f6f3e8     guibg=#444444     gui=NONE      ctermfg=darkgray    ctermbg=NONE        cterm=NONE
  hi PmenuSel                   guifg=#000000     guibg=#cae682     gui=NONE      ctermfg=white       ctermbg=NONE        cterm=NONE
  hi Search                     guifg=NONE        guibg=NONE        gui=underline ctermfg=NONE        ctermbg=NONE        cterm=underline
endif

" Syntax highlighting
hi Comment                      guifg=#7C7C7C     guibg=NONE        gui=NONE      ctermfg=darkgray    ctermbg=NONE        cterm=NONE
hi Conditional                  guifg=#6699CC     guibg=NONE        gui=NONE      ctermfg=27          ctermbg=NONE        cterm=NONE
hi Constant                     guifg=#99CC99     guibg=NONE        gui=NONE      ctermfg=cyan        ctermbg=NONE        cterm=NONE
hi Delimiter                    guifg=#00A0A0     guibg=NONE        gui=NONE      ctermfg=cyan        ctermbg=NONE        cterm=NONE
hi Function                     guifg=#FFD2A7     guibg=NONE        gui=NONE      ctermfg=brown       ctermbg=NONE        cterm=NONE
hi Identifier                   guifg=#C6C5FE     guibg=NONE        gui=NONE      ctermfg=cyan        ctermbg=NONE        cterm=NONE
hi Keyword                      guifg=#96CBFE     guibg=NONE        gui=NONE      ctermfg=27          ctermbg=NONE        cterm=NONE
hi Number                       guifg=#FF73FD     guibg=NONE        gui=NONE      ctermfg=magenta     ctermbg=NONE        cterm=NONE
hi Operator                     guifg=white       guibg=NONE        gui=NONE      ctermfg=white       ctermbg=NONE        cterm=NONE
hi PreProc                      guifg=#96CBFE     guibg=NONE        gui=NONE      ctermfg=27          ctermbg=NONE        cterm=NONE
hi Todo                         guifg=#8f8f8f     guibg=NONE        gui=NONE      ctermfg=red         ctermbg=NONE        cterm=NONE
hi Type                         guifg=#FFFFB6     guibg=NONE        gui=NONE      ctermfg=yellow      ctermbg=NONE        cterm=NONE
hi Special                      guifg=#E18964     guibg=NONE        gui=NONE      ctermfg=white       ctermbg=NONE        cterm=NONE
hi Statement                    guifg=#6699CC     guibg=NONE        gui=NONE      ctermfg=lightblue   ctermbg=NONE        cterm=NONE
hi String                       guifg=#A8FF60     guibg=NONE        gui=NONE      ctermfg=green       ctermbg=NONE        cterm=NONE

hi link Boolean                 Constant
hi link Character               Constant
hi link Debug                   Special
hi link Define                  PreProc
hi link Exception               Statement
hi link Float                   Number
hi link Include                 PreProc
hi link Label                   Statement
hi link Macro                   PreProc
hi link PreCondit               PreProc
hi link Repeat                  Statement
hi link SpecialChar             Special
hi link SpecialComment          Special
hi link StorageClass            Type
hi link Structure               Type
hi link Typedef                 Type
hi link Tag                     Special

" Special for vimdiff --------------------------------------------------------------------------------------------------------------
hi String                       guifg=#A8FF60     guibg=NONE        gui=NONE      ctermfg=green       ctermbg=NONE        cterm=NONE
hi DiffAdd                      guifg=NONE        guibg=NONE        gui=NONE      ctermfg=black       ctermbg=lightgreen  cterm=NONE
hi DiffChange                   guifg=NONE        guibg=NONE        gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE
hi DiffDelete                   guifg=NONE        guibg=NONE        gui=NONE      ctermfg=black       ctermbg=lightred    cterm=NONE
hi DiffText                     guifg=NONE        guibg=NONE        gui=NONE      ctermfg=black       ctermbg=green       cterm=NONE

" Special for Git ------------------------------------------------------------------------------------------------------------------
hi diffAdded                    guifg=NONE        guibg=NONE        gui=NONE      ctermfg=green       ctermbg=black       cterm=NONE
hi diffRemoved                  guifg=NONE        guibg=NONE        gui=NONE      ctermfg=red         ctermbg=black       cterm=NONE
hi diffFile                     guifg=NONE        guibg=NONE        gui=NONE      ctermfg=gray        ctermbg=black       cterm=NONE

" Special for Ruby -----------------------------------------------------------------------------------------------------------------
" hi rubyAccess                   guifg=NONE        guibg=NONE        gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE
" hi rubyBeginEnd                 guifg=NONE        guibg=NONE        gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE
" hi rubyBoolean                  guifg=NONE        guibg=NONE        gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE
" hi rubyClassVariable            guifg=NONE        guibg=NONE        gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE
" hi rubyControl                  guifg=#6699CC     guibg=NONE        gui=NONE      ctermfg=blue        ctermbg=NONE        cterm=NONE
" hi rubyCurlyBlock               guifg=NONE        guibg=NONE        gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE
hi rubyEscape                   guifg=white       guibg=NONE        gui=NONE      ctermfg=cyan        ctermbg=NONE        cterm=NONE
" hi rubyGlobalVariable           guifg=#FFCCFF     guibg=NONE        gui=NONE      ctermfg=lightblue   ctermbg=NONE        cterm=NONE
" hi rubyInclude                  guifg=NONE        guibg=NONE        gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE
hi rubyInterpolationDelimiter   guifg=#00A0A0     guibg=NONE        gui=NONE      ctermfg=blue        ctermbg=NONE        cterm=NONE
hi rubyStringDelimiter          guifg=#336633     guibg=NONE        gui=NONE      ctermfg=lightgreen  ctermbg=NONE        cterm=NONE
" hi rubyPredefinedVariable       guifg=NONE        guibg=NONE        gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE
" hi rubyRepeatModifier           guifg=NONE        guibg=NONE        gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE
hi rubyRegexp                   guifg=#B18A3D     guibg=NONE        gui=NONE      ctermfg=brown       ctermbg=NONE        cterm=NONE
hi rubyRegexpDelimiter          guifg=#FF8000     guibg=NONE        gui=NONE      ctermfg=brown       ctermbg=NONE        cterm=NONE
" hi rubySharpBang                guifg=NONE        guibg=NONE        gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE

" hi link rubyArrayDelimiter    Special
hi link rubyClass               Keyword
hi link rubyClassVariable       Identifier
hi link rubyConstant            Type
hi link rubyControl             Keyword
hi link rubyGlobalVariable      Identifier
hi link rubyIdentifier          Identifier
hi link rubyInstanceVariable    Identifier
hi link rubyKeyword             Keyword
hi link rubyModule              Keyword
hi link rubyOperator            Operator

" Special for Javascript -----------------------------------------------------------------------------------------------------------
hi link javaScriptNumber        Number

" Special for HTML -----------------------------------------------------------------------------------------------------------------
hi link htmlTag                 Keyword
hi link htmlTagName             Conditional
hi link htmlEndTag              Identifier

" Special for XML ------------------------------------------------------------------------------------------------------------------
hi link xmlTag                  Keyword
hi link xmlTagName              Conditional
hi link xmlEndTag               Identifier
