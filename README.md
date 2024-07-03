# nvim setup/config

daybreak's personalized nvim setup

- NeoVim supports vimrc and lua. 
- working/portable neovim setup

- Requirments:
    - neovim 0.9 +  ( check your version: nvim -v )
    - understand neoVim setup 
    - lua and vimscript 
    - modification required for personalization

Intro: NeoVim is a text editor similar with Vim ( uses the underlying vim libraries ). It works with motions attached over the keyboad, allowing keymaps to navigate/and perfon editing actions (using macros). NeoVim goes a step ahead of vim with additional power, speed, and extendabulity via scriptable plugins which are built using lua. Plugins allow to plug any thing into neovim for example, working with git using git management utils( neogit ) , organizational tools neorg ...

- configuration: Like vim, neoVim configuration startup scripts (written in lua) allows to bring up neoVim when run and perform the way we wish for.

- As neovim support vim scripts and lua ( the setup has this information commented while using vimscript ) 
- lua: ( scripting language which is light weight and pretty easy to learn, with syntax similar with python ) Lua supports the concept of 'tables' helps make things extensible and easy to reason.

- Startup file: (init.lua)
    init.lua is the entry point for the application/module using Lua. And neoVim uses the same convention. 
    => init.lua should hold all the initialization flow the way you wish neovim to startup for your work.

- neoVim looks for init.lua file when it startsup. the location of this configuration directory can be printed by :echo stdpath("config") 

    => /home/user/.config/nvim 
[Note: echo and stdpath("config") are vim script functions. ]
- vimscript and lua are both supported languages in NeoVim. ( vimscript is older and slow then lua ).

- create init.lua in the above location.
    - split the configutaion to sub-configurtaion files based on there scope:
        - options: holds vim options and setting
        - mapping: keymaps and shortcuts 
            - regular keymaps
        	- maps for plugins
        - plugings: 
            - install, update, setup, configure, keymaps( as comments )
        - portability:
            - github the cloned copy should work out of the box on invoking NeoVim.

- Layout:
    
    ├── init.lua
    ├── lua
    │   ├── maps-plugins.lua
    │   ├── maps-std.lua
    │   ├── options.lua
    │   └── plugins.lua
    ├── after
    │   └── ftplugin
    │           └── c.lua
    └── README.md

---
# plugings:

- lua/plugins.lua 
- plugins are managed using lazy plugin manager:
    - Most of the plugins are synced from kickstart:
    - Additional pluginds tagbar, Aerial, gtags are added for installation.
    - Autocompletion : additoon + edition  ( comparing Astronvim ) for usabulity
    - LSP server ( pretty, lua, clang, Rust ) enabled.
    
TODO: maps-plugins can be dropped as keymaps are setup within the plugin section.

- after/ftplugin:
    the folder has scripts that will be executed after all the plugins and modules are done setting up if the document to be 
    opened matches with the language type ( ex: c.lua : would be invoked after all pluggins are setup for editing c files.)
- Tested by cloning to different pc. - [OK]
