# Setup

## OSX

### SSH Keys
 ```
ssh-keygen
```
Upload public key to source control

### [homebrew](https://brew.sh/)
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
Install basic tools
```
brew install fish fzf git ripgrep tmux vim
brew tap homebrew/cask-fonts
brew install --cask font-sauce-code-pro-nerd-font
```

### [.dotfiles](https://github.com/leefan/.dotfiles) (this repo)
From the user folder (`~`):
```
git clone git@github.com:leefan/.dotfiles.git
```
Initialize
```
.dotfiles/update
```

### Terminal
Update terminal settings:
1. **Terminal** > **Preferences** > **General** > New Window with profile: **Pro**
2. **Terminal** > **Preferences** > **Profiles** > **Pro** > **Text** > Font: **Sauce Code Pro Nerd Font Complete 10**

### [oh-my-fish](https://github.com/oh-my-fish/oh-my-fish)
```
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
```
Install plugins
```
omf install asdf brew bobthefish
```

### fish
```
echo '/opt/homebrew/bin/fish' | sudo tee -a /etc/shells
chsh -s /opt/homebrew/bin/fish
```

### powerline
```
asdf plugin add python
asdf install python latest
pip install powerline-status
```
update `.tmux.conf` to latest python version
