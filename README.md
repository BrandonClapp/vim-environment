### Installation

Repo contents go inside of `~/.vim/`. Pathogen packages are referenced as submodules.

```
git clone --recursive https://github.com/BrandonClapp/vim-environment ~/.vim/
```

`~/.vimrc` is now located at `~/.vim/.vimrc` so a link is required.


```
ln -s ~/.vim/.vimrc ~/.vimrc
```

### Included plugins
- auto-pairs
- ctrlp
- nerdtree
- syntastic
- vim-airline
- vim-colorschemes

### Rebinding keys

Caps Lock can be rebound to Left Control when held, Escape when tapped.

#### Mac/Linux

Karabiner/xcape can be used. [Follow instructions here](http://www.economyofeffort.com/2014/08/11/beyond-ctrl-remap-make-that-caps-lock-key-useful/)

#### Windows

Rebind Caps Lock key to Control when held, Escape when tapped.

**AutoHotKey Script:**

```
; Author: fwompner gmail com
InstallKeybdHook
SetCapsLockState, alwaysoff
apslock::
Send {LControl Down}
KeyWait, CapsLock
end {LControl p}
if ( A_PriorKey = "CapsLock"  )
{
    Send {Esc}

}
return
```
