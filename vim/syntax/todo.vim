" Vim syntax file
" Language:     Markdown
" Maintainer:   Tim Pope <vimNOSPAM@tpope.org>
" Filenames:    TODO.md
" Last Change:	2010 May 21

if exists("b:current_syntax")
  finish
endif

runtime! syntax/markdown.vim
unlet! b:current_syntax

syn match tTODO  'TODO'
syn match tDOING 'DOING'
syn match tDONE  'DONE'

let b:current_syntax = "todo"

" vim:set sw=2:
