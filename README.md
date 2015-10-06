#Vim Configuration File

##Setup New Config from this Repo
###Install
```Shell
$ cd
$ git clone https://github.com/halvves/dotvim.git .vim
```
###Point .vimrc to your .vim/vimrc file
```Shell
$ echo "runtime vimrc" > .vimrc
```
###Fetch submodules for pathogen
```Shell
$ cd ~/.vim/
$ git submodule init
$ git submodule update
```

##To Push Updates to Github
```
$ git add *
$ git commit -m "[MY MESSAGE]"
$ git push origin master
```

##To Pull Updates from Github 
```
$ cd ~/.vim/
$ git pull origin master
```

##To Update Bundles
```Shell
$ cd ~/.vim/bundle/[MY_BUNDLE]
$ git pull origin master
```

Sources:
http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/
http://stackoverflow.com/questions/18197705/adding-your-vim-vimrc-to-github-aka-dot-files
