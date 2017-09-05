# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

export PATH=${PATH}:/usr/local/bin/brew

#ANDROID_SDK
export ANDROID_SDK=/Users/Orange/Dev/sdk/platform-tools
export PATH=${PATH}:${ANDROID_SDK}

export ANDROID_HOME=/Users/Orange/Dev/sdk
export PATH=${PATH}:${ANDROID_HOME}

#ANDROID_NDK
NDK_ROOT=/Users/Orange/Dev/android-ndk-r10e
export PATH=${PATH}:${NDK_ROOT}
export ANDROID_NDK=/Users/Orange/Dev/android-ndk-r10e

#GRADLE
GRADLE=/Users/Orange/Dev/gradle-4.0-milistone-2/bin
export PATH=${PATH}:${GRADLE}

#SCITER
export SCITER=/Users/Orange/Dev/sciter-sdk/bin.osx/
export PATH=${PATH}:${SCITER}

#LOGDOG
LOGDOG=/Users/Orange/Dev/logdog/
export PATH=${PATH}:${LOGDOG}

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_74.jdk/Contents/Home
export JAVA_BIN=${JAVA_HOME}/bin
export PATH=${PATH}:${JAVA_BIN}

#GO
export GOPATH=/Users/Orange/Dev/Go
export PATH=$PATH:$GOPATH

export GOBIN=${GOPATH}/bin
export PATH=${PATH}:${GOBIN}

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="apple"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git autojump)

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#logdog
_logdog() {
    local tag="${words[$CURRENT]}"
    compadd $(adb shell ps | tr -d '\r' | awk -v tag=" $tag" '$0 ~ tag { print $9 }')
}
compdef _logdog logdog
#logdog end

_logcat() {
    local tag="${words[$CURRENT]}"
    compadd $(adb shell ps | tr -d '\r' | awk -v tag=" $tag" '$0 ~ tag { print $9 }')
}
compdef _logcat logcat

[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

alias 成都。。="cd .."
alias 吃的。。="cd .."
alias gg="go build"
alias 啊都不="adb"
alias j648="ssh godman@106.75.79.15 -p56000"
alias towhich='_towhich() {cd `dirname $(which $1)`;};_towhich'

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/Orange/.sdkman"
[[ -s "/Users/Orange/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/Orange/.sdkman/bin/sdkman-init.sh"

eval $(thefuck --alias fk)
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_74.jdk/Contents/Home

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
