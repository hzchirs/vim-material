```
       _                                 _            _       _
__   _(_)_ __ ___        _ __ ___   __ _| |_ ___ _ __(_) __ _| |
\ \ / / | '_ ` _ \ _____| '_ ` _ \ / _` | __/ _ \ '__| |/ _` | |
 \ V /| | | | | | |_____| | | | | | (_| | ||  __/ |  | | (_| | |
  \_/ |_|_| |_| |_|     |_| |_| |_|\__,_|\__\___|_|  |_|\__,_|_|
```

# vim-material
[equinusocio's Material Theme](https://github.com/equinusocio/vsc-material-theme) port
for vim.

**Note:** support true color terminal and gvim only

Screenshot
------------

**Dark**
![Dark](https://imgur.com/xfGYwwc.jpg)

**Light**
![Light](https://user-images.githubusercontent.com/4735528/42131913-8c1b0d68-7d3f-11e8-935a-4c10181127d9.png)

**Palenight**
![Palenight](https://user-images.githubusercontent.com/4735528/42134016-056046f4-7d66-11e8-9ea0-c96a59a5b7b0.png)

**Oceanic**
![Oceanic](https://user-images.githubusercontent.com/4735528/47250634-6ebe2b00-d457-11e8-92d7-dabb871f60f1.png)

Installation
------------

* [vim-plug](https://github.com/junegunn/vim-plug)
```vim
Plug 'hzchirs/vim-material'

" Dark
set background=dark
colorscheme vim-material

" Palenight
let g:material_style='palenight'
set background=dark
colorscheme vim-material

" Oceanic
let g:material_style='oceanic'
set background=dark
colorscheme vim-material

" Light
set background=light
colorscheme vim-material
```

### Airline
Colorscheme also include an [Airline](https://github.com/vim-airline/vim-airline) theme

```vim
let g:airline_theme='material'
```

License
---
MIT
