# Dotfiles

couple of my dotfiles in a repo 


# Notes:

## .gitconfig

yes, i use gh cli

## .zshrc

a lot of this is specific to my home directory and install stuff

I use [Oh My ZSH](https://ohmyz.sh/), the only proper way to use zsh.

There's some conda stuff, and then a few random CLI apps I installed 
and added to $PATH even though I hardly use them


## kbdtog.sh 

I use an external keyboard with my laptop, so I sometimes disable the 
builtin keyboard so I can place the keyboard on top. The numbers are kinda
arbitrary so I do some hacky grep abuse to find the id and master numbers

use `kbdon` and `kbdoff` respectively

## libinput-gestures.conf 

Used on X11 for adding trackpad gestures to switch KDE desktops 
and pinch to zoom.

## mkc.sh 

Because why do `mkdir <dir>` and then `cd` into it when you could do it 
all at once.

## mpasteclear.sh 

I don't know why middle click pastes and I don't like it. This is likely
taken from some StackOverflow post or the Manjaro forums.

## pvc.sh 

Shortcuts to connect and disconnect a WireGuard VPN 

## restart_kde.sh 

When KDE Plasma glitches out. Definitely stolen from some forum that I 
can no longer find (thanks whoever you are!)
