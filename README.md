# Vim Configuration File

## Starting fresh with this repo 

### Clone
```Shell
git clone https://github.com/halvves/dotvim.git ~/.vim
```

### Install plugins using minpac
open vim and run `:PackUpdate`

## Adding/Removing/Updating

### Adding plugins
add a `call minpac#add('https://path.to/plugin.git')` entry to `packages.vim` and re-run `:PackUpdate`

### Removing plugins
delete the plugin's `call minpac#add('https://path.to/plugin.git')` entry and run `:PackClean`

### Updating plugins
simply run `:PackUpdate`
