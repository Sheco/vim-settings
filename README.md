This my personal vim home, my own cozy place for my vim settings.

It **needs** vim 8.x, because the packages feature was introduced in that version.

Cloning this repository into ```~/.vim``` will set vim up the way I like it.

```
$ git clone --recursive https://www.github.com/Sheco/vim-settings ~/.vim
```

Let it download some plugins, it might take a minute, after that, it's completely ready.


The plugins can be updated with the next sentence:

```
$ git pull --recurse-submodules
```

# Plugins

Most of the power introduced to vim in this repository comes from vim-plugins, a reference to these can be found at [pack/plugins/start](pack/plugins/start), each plugin has its own strengths and needs to be studied individually.

# ALE

ALE might need some extra tools for linting.

For example, for javascript I use ```standard```, which is installed with:

```
$ npm install --global standard
```
