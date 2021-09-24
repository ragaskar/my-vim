# my-vim
my vim dotfiles (written from scratch)

## Why

My trusty vim-config stopped working with the version of macvim I was able to get from brew. I realized I understood so little about how this config worked and what was in it that I could not troubleshoot it whatsoever. The state of the art for vim has advanced significantly since the old config was written, so it made sense to start from scratch and make choices consistent with my preferences. Using vim-plug allows me to abandon the tortuous git submodule patterns of the past. There were also a handful of conveniences in the old config that led to bad habits (e.g. save on change focus, nice, but also means with terminal vims I would constantly forget to save). Lastly, I now have the opportunity to build up a more intelligiable git commit history for the config and make sure the rc is well commented.

## Installing

```
brew install fzf #yeah I assume you're on osx and using brew, otherwise install fzf somehow. :) 
./install.sh
```
