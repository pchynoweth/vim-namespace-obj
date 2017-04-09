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

onoremap <Plug>SelectANamespace :<C-u>call vim_namespace_obj#SelectNamespace('l')<CR> :call repeat#set("\<Plug>SelectANamespace")<CR>
onoremap <Plug>SelectInnerNamespace :<C-u>call vim_namespace_obj#SelectNamespace('h')<CR> :call repeat#set("\<Plug>SelectInnerNamespace")<CR>
vnoremap <Plug>SelectANamespace :<C-u>call vim_namespace_obj#SelectNamespace('l')<CR> :call repeat#set("\<Plug>SelectANamespace")<CR>
vnoremap <Plug>SelectInnerNamespace :<C-u>call vim_namespace_obj#SelectNamespace('h')<CR> :call repeat#set("\<Plug>SelectInnerNamespace")<CR>

if !exists('g:vim_namespace_obj_map_keys')
    let g:vim_namespace_obj_map_keys = 0
endif

if g:vim_namespace_obj_map_keys
    omap <silent>an <Plug>SelectANamespace
    omap <silent>in <Plug>SelectInnerNamespace
    vmap <silent>an <Plug>SelectANamespace
    vmap <silent>in <Plug>SelectInnerNamespace
endif
