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

function! vim_namespace_obj#SelectNamespace(mode) " {{{
    let l:startline = line(".")
    normal! wbv
    let l:colonline = search('::')
    if l:colonline != l:startline
        throw "No namespace found"
    endif
    execute 'normal!'  . a:mode
endfunction " }}}
