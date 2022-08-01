# dotfiles

## Manual installation

- VSCode
- iTerms
- GitHub Desktop
- Homebrew (macOS)

## iTerms theme setup

- General > Window > Uncheck "Native full screen windows"
- Profiles > Window
  - Style: set to "Full Screen"
  - Screen: set to "Screen with cursor"
  - Space: set to "All spaces"

Profiles can also be imported/exported as JSON.

## VSCode config

VSCode does not have a proper default for press & hold behavior, making vim mode hard to use.

```sh
defaults read com.microsoft.VSCode ApplePressAndHoldEnabled
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
```

Set it to false to use press & hold in vim mode to move around.
