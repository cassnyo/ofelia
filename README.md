## Setup

`git clone https://github.com/cassnyo/ofelia.git ~/Develop/ofelia`

## 🍺 Homebrew

- Install using curl: `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
- Install all apps at once using Homebrew `brew bundle --file brew/Brewfile`

## 📺 oh-my-zsh

- Install using curl: `sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
- Download plugin zsh-autosuggestions: `git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions`

## 🗒️ dotfiles 

- `ln -sf ~/Develop/ofelia/config/gitconfig ~/.gitconfig`
- `ln -sf ~/Develop/ofelia/config/zshrc ~/.zshrc`

## Scripts

- `sh system-prefs.sh`
- `sh iterm2-prefs.sh`

## Manual configuration

### System
- Disable Spotlight hotkey: go to `System Preferences > Keyboard > Spotlight` and disable `Show Spotlight search`.

### Raycast
- Enable Raycat hotkey. `Raycast Preferences > General`.
- Set Rectangle hotkeys to Raycast window management. `Raycast Preferences > Extensions > Window management > Presets > Rectangle`
- Set shortcut to *iTerm*: `Reycast Preferences > Extensions > Search iTerm > Record Hotkey ⌘+R`

### Visual Studio Code
- Enable *Online Server Settings*: go to `Code > Preferences > Online Server Settings` and follow the steps.

### iTerm
- Enable *Save changes automatically*: go to `iTerm2 > General > Preference` and select *Save changes automatically*.


### Dock app order
- Finder
- Launchpad
- Google Chrome
- Android Studio
- Visual Studio Code
- iTerm
- Spotify
- Mark-Text
- Notion
- Bin
