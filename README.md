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


# Conqueror of Completion

I am currently using vim-coc, the first time, it needs to execute `yarn install`, it `yarn` has to be installed beforehand, in Debian 10, it's in the `yarnpkg` package and it installs a `yarnpkg` executable, you might need to create a symlink from `yarnpkg` to `yarn`, or install it using the official source.

You will also need to install your languages' extensions, for example:

```
:CocInstall coc-phpls coc-tsserver coc-go coc-python
```
