vim-namespace-obj
=================

[![Build Status](https://travis-ci.org/pchynoweth/vim-namespace-obj.svg?branch=master)](https://travis-ci.org/pchynoweth/vim-namespace-obj)

Description
-----------
I wrote this plugin to fulfill a specific requirement I have to change or remove
namespace-like text objects from C++ files.  By this I mean names separated by a
double colon ('::').

The motion should be fully repeatable using the '.' (dot) operator (requires vim >=8.0).

Usage
-----
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

Installation
------------
If you're using [Vundle](https://github.com/VundleVim/Vundle.vim),
just add `Plugin 'pchynoweth/vim-namespace-obj'` to your .vimrc and run `:PluginInstall`.

If you're using [pathogen](https://github.com/tpope/vim-pathogen),
add this repo to your bundle directory.

License
-------
This project is licensed under the LGPL v3 - see the [LICENSE](LICENSE) for more details.
