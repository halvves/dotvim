# Vim Configuration File

## Setup New Config from this Repo

### Install
```Shell
git clone https://github.com/halvves/dotvim.git ~/.vim
```

### Fetch submodules for pathogen
```Shell
cd ~/.vim/ && git submodule init && git submodule update
```

## To Install Additional Bundles
```
$ cd ~/.vim/bundle
$ git submodule add https://github.com/user/repo.git
```

## To Update Bundles
```Shell
$ cd ~/.vim/bundle/[MY_BUNDLE]
$ git pull origin master
```

Sources:
* http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/
