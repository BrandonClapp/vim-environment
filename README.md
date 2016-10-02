## Installation

Repo contents go inside of `~/.vim/`. Pathogen packages are referenced as submodules.

### Mac/Linux
```
git clone --recursive https://github.com/BrandonClapp/vim-environment ~/.vim/
```

`~/.vimrc` is now located at `~/.vim/.vimrc` so that it can be under source control. A syslink is required from `~` to `~/.vimrc`.

### Windows

```
git clone https://github.com/BrandonClapp/vim-environment C:\Users\YourUserName
```

Windows uses `vimfiles` to represent `.vim` and `_vimrc` to represent `.vimrc`, so two links are required.

```
cd C:\Users\YourUserName
mklink /d vimfiles .vim
mklink _vimrc .vim\.vimrc
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
- vim-dispatch
- YouCompleteMe
- ultisnips
- typescript-vim

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

Requirements:
- Mono >3

OmniSharp needs to be compiled before use. After the environment has been cloned/pulled and `git submodule update --init --recursive` has been performed, use xuild/msbuild to build the omnisharp server.

```bash
cd omnisharp-vim
git submodule update --init --recursive
cd server
xbuild
```
Change xbuild to msbuild if working on Windows.
