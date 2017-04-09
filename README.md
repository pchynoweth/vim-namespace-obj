vim-namespace-obj
=================

Description
-----------
I wrote this plugin to fulfill a specific requirement I have to change or remove
namespace-like text objects from C++ files.  By this I mean names separated by a
double colon ('::').

Usage
=====
By default this plugin will not create any key mappings.  You can opt for the
default mappings by adding the following to your vimrc:

```vim
let g:vim_namespace_obj_map_keys = 1
```

The default mapping are:
* an - Select a namespace
* in - Select inner namespace

Alternatively you can create your own mappings as follows:

```vim
omap <silent>an <Plug>SelectANamespace
omap <silent>in <Plug>SelectInnerNamespace
vmap <silent>an <Plug>SelectANamespace
vmap <silent>in <Plug>SelectInnerNamespace
```
