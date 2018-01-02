" Vim syntax file
" Language:     Tulip
" Maintainer:   Jeanine Adkisson
" URL:          http://tuliplang.org/

let ident = "[a-zA-Z-][\/a-zA-Z0-9_-]*"

"" dash is anywhere in an ident
setlocal iskeyword+=-

syntax sync fromstart

" syntax match   qshPunctuation           /\%(:\|,\|\;\|!\|<\|\*\|>\|=\|(\|)\|\[\|\]\||\|{\|}\|\~\)/
syntax match   qshPunctuation           /\%(|\|=>\|;\|(\|)\|\[\|\]\|<\|>\|{\|}\|&\)/


syn match qshComment /#[^\n]*\n/
exe "syn match qshAnnot /++\\?" . ident . "/"
exe "syn match qshName /" . ident . "/"
" exe "syn match qshDotted /[.][\\/]\\?" . ident . "/"
exe "syn match qshCheck /[\\%]" . ident . "/"
exe "syn match qshPath /[\\:]" . ident . "/"
exe "syn match qshLookup /[!]" . ident . "/"
exe "syn match qshKeyword /[@][@]\\?" . ident . "/"
exe "syn match qshDollar /[\\$]/"
exe "syn match qshDynamic /[\\$]" . ident . "/"
exe "syn match qshDynamic /[\\$][0-9]\\+/"
exe "syn match qshMacro /\\(\\\\\\\\\\?" . ident . "\\)/"
exe "syn match qshFlag /-" . ident . "/"
exe "syn match qshInfix /`" . ident . "/"
" syn match qshUppercase /[A-Z][a-zA-z0-9]*/

syn match qshNumber /\d\+\(\.\d\+\)\?\>/

" syn match qshBareString /'[^{][^ 	\n)\];]*/
" syn region qshParseMacro start=/\\\w\+{/ end="" contains=qshStringContents
" syn region qshString start="'{" end="" contains=qshStringContents
" syn region qshStringContents start="{" end="}" contains=qshStringContents contained

syn region qshDQString start='"' end='"' contains=qshUnicode,qshEscape
syn match qshUnicode /\\u[0-9a-f][0-9a-f][0-9a-f][0-9a-f]/ contained
syn match qshEscape /\\[trn0e\\"]/ contained

hi! def link qshName        Name
hi! def link qshUppercase   Type
hi! def link qshDotted      Type
hi! def link qshPunctuation Punctuation
hi! def link qshCheck       Type
hi! def link qshKeyword     Keyword
hi! def link qshMacro       Punctuation
hi! def link qshFlag        Special
" hi! def link qshBareString  String
" hi! def link qshString      String
" hi! def link qshParseMacro  Punctuation
hi! def link qshDQString    String
hi! def link qshPath    String
hi! def link qshLookup    Function
hi! def link qshUnicode SpecialChar
hi! def link qshEscape SpecialChar
hi! def link qshStringContents String
hi! def link qshAnnot       Function
hi! def link qshInfix       Function
hi! def link qshLet         Punctuation
hi! def link qshDynamic     Identifier
hi! def link qshDollar      Identifier
hi! def link qshComment     Comment
hi! def link qshNumber      Number
