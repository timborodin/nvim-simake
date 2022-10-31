" Title:        nvim-simake
" Description:  A plugin to run cmake and make.
" Last Change:  01 October 2022
" Maintainer:   <https://github.com/timborodin>

" Prevents the plugin from being loaded multiple times. If the loaded
" variable exists, do nothing more. Otherwise, assign the loaded
" variable and continue running this instance of the plugin.
if exists("g:loaded_nvim_simake")
    finish
endif

let g:loaded_nvim_simake = 1

" Defines a package path for Lua. This facilitates importing the
" Lua modules from the plugin's dependency directory.
" let s:lua_rocks_deps_loc =  expand("<sfile>:h:r") . "/../lua/nvim-simake/deps"
" exe "lua package.path = package.path .. ';" . s:lua_rocks_deps_loc . "/lua-?/init.lua'"

" Exposes the plugin's functions for use as commands in Neovim.
command! -nargs=0 FetchTodos lua require("example-plugin").fetch_todos()
command! -nargs=0 InsertTodo lua require("example-plugin").insert_todo()
command! -nargs=0 CompleteTodo lua require("example-plugin").complete_todo()
