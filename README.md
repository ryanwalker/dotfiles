# Dotfiles

https://thoughtbot.github.io/rcm/rcrc.5.html

To install you must have `rcm` installed.

```sh
brew install rcm
```

Then you will clone the dotfile to your home dir and use rcm to install them.

```sh
git clone https://github.com/ryanwalker/dotfiles.git ~/.dotfiles

# Sets up .rcrc, which has rcup config like EXCLUDES="..."
rcup -v rcrc

# Sets up all the other dot files
rcup -v
```

Now run the bootstrap script to install tools:
```sh
./new-computer-bootstrap.sh
```