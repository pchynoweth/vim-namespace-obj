"Copyright (C) 2017 Peter Chynoweth
"
"This file is part of vim-namespace-obj.
"
"vim-namespace-obj is free software: you can redistribute it and/or modify
"it under the terms of the GNU Lesser General Public License as published by
"the Free Software Foundation, either version 3 of the License, or
"(at your option) any later version.
"
"vim-namespace-obj is distributed in the hope that it will be useful,
"but WITHOUT ANY WARRANTY; without even the implied warranty of
"MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
"GNU Lesser General Public License for more details.
"
"You should have received a copy of the GNU General Public License
"along with vim-namespace-obj.  If not, see <http://www.gnu.org/licenses/>.

" this::is::a::test::namespace

function! <SID>SelectNamespace(mode)
    normal! wbv
    call search('::')
    execute 'normal!'  . a:mode
endfunction

onoremap <silent>an :<C-u>call <SID>SelectNamespace('l')<CR>
onoremap <silent>in :<C-u>call <SID>SelectNamespace('h')<CR>
vnoremap <silent>an :<C-u>call <SID>SelectNamespace('l')<CR>
vnoremap <silent>in :<C-u>call <SID>SelectNamespace('h')<CR>
