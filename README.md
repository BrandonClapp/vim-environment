## Installation

Repo contents go inside of `~/.vim/`. Pathogen packages are referenced as submodules.

```
git clone --recursive https://github.com/BrandonClapp/vim-environment ~/.vim/
```

`~/.vimrc` is now located at `~/.vim/.vimrc` so a syslink is required.


```
ln -s ~/.vim/.vimrc ~/.vimrc
```

## Included plugins
- auto-pairs
- ctrlp
- nerdtree
- syntastic
- vim-airline
- vim-colorschemes
- vim-surround
- omnisharp-vim

## Rebinding keys

Caps Lock can be rebound to Left Control when held, Escape when tapped.

### Mac/Linux

Karabiner/xcape can be used. [Follow instructions here](http://www.economyofeffort.com/2014/08/11/beyond-ctrl-remap-make-that-caps-lock-key-useful/)

*Bind Capslock to Control*

![Bind capslock to control](./.readme/osx-map-capslock-to-control.png)

**Karabiner**

Install with `brew install karabiner`

*Send `Escape` when `Control` is pressed*

![Bind control to escape](./.readme/osx-karabiner-map-control-to-escape.png)

### Windows

Rebind Caps Lock key to Control when held, Escape when tapped.

**AutoHotKey Script:**

```
; Author: fwompner gmail com
#InstallKeybdHook
SetCapsLockState, alwaysoff
Capslock::
Send {LControl Down}
KeyWait, CapsLock
Send {LControl Up}
if ( A_PriorKey = "CapsLock" )
{
    Send {Esc}
}
return
```

## OmniSharp

OmniSharp needs to be compiled before use. After the environment has been cloned/pulled and `git submodule --init` and `git submodule --update` have been performed, use xuild/msbuild to build omnisharp.

```bash
cd omnisharp-vim
git submodule update --init --recursive
cd server
xbuild
```
