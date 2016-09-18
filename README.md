Repo contents go inside of `~/.vim/`.

`~/.vimrc` is now located at `~/.vim/.vimrc` so a link is required.


```
ln -s ~/.vim/.vimrc ~/.vimrc
```

### Windows

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
