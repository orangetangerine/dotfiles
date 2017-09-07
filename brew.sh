# Install Homebrew

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew tap homebrew/versions
brew update
brew upgrade --all

# Install packages
apps=(
    caskroom/cask/brew-cask
    cmake
    coreutils
    findutils
    git
    gnu-sed --with-default-names
    go
    python
    ruby
    svn
    vim --with-lua --with-python3 --with-override-system-vi
    wget
	autojump
    zsh
)

caskapps=(
    alfred
    atom
    dash
    google-chrome
    android-platform-tools
    iterm2
    java
    karabiner
    qq
    qqmusic
    wiznote
    steam
)
#android-studio
#intellij-idea-ce

brew update
brew install "${apps[@]}"
brew tap caskroom/versions
brew cask install --appdir="/Applications" "${caskapps[@]}"
brew cleanup
brew cask cleanup
