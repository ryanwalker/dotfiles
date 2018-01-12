# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/ryanwalker/.oh-my-zsh

# exports
#export JAVA7_HOME=`/usr/libexec/java_home -v 1.7`
export JAVA8_HOME=`/usr/libexec/java_home -v 1.8`
export JAVA_HOME=$JAVA8_HOME

#alias j7='JAVA_HOME=$JAVA7_HOME; export PATH=$JAVA_HOME/bin:$PATH'
alias j8='JAVA_HOME=$JAVA8_HOME; export PATH=$JAVA_HOME/bin:$PATH'

export NEXUS_USERNAME='deployment'
export NEXUS_PASSWORD='Password0'
export MYSQL_HOST='127.0.0.1'

export MAVEN_OPTS='-Xms2048m -Xmx2048m -XX:MaxPermSize=2048m -XX:ReservedCodeCacheSize=64m'
#export MAVEN_DEBUG_OPTS='-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=8000'

export PATH=$HOME/projects/kubraio-platform-scripts/build:$PATH
export PATH=$HOME/Library/Python/3.6/bin:$PATH

# Export Keychain Secrets
export AWS_ACCESS_KEY_ID=$(security find-generic-password -wa AWS_ACCESS_KEY_ID)
export AWS_SECRET_ACCESS_KEY=$(security find-generic-password -wa AWS_SECRET_ACCESS_KEY)

unset portsearch;
function portsearch(){
    sudo lsof -i :$1
}
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

#if [ -f `brew --prefix`/usr/local/etc/bash_completion.d ]; then
#    . `brew --prefix`/usr/local/etc/bash_completion.d
#fi


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
plugins=(git)

source $ZSH/oh-my-zsh.sh
source ~/.iterm2_shell_integration.zsh

# User configuration
DEFAULT_USER=`whoami`

# export MANPATH="/usr/local/man:$MANPATH"

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
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias carddb='ssh -N card'
alias core='cd ~/projects/infusionsoft-core'
alias dbvis="nohup ~/applications/dbvis/dbvis &"
alias dm='docker-machine'
alias dockerinit='$(boot2docker shellinit)'
alias dotfiles='cd ~/.dotfiles'
alias dup='docker-compose up -d'
alias emt="mvn tomcat:run -pl webapp"
alias emtd="mvnDebug tomcat:run -pl webapp"
alias emtd6="mvnDebug tomcat6:run -pl webapp"
alias gbrun='gradle clean bootRun'
alias gbuild='gradle clean build'
alias gp='git pull'
alias grun='gradle clean runApp'
alias hideicons='defaults write com.apple.finder CreateDesktop false && killall Finder'
alias jc="export JAVA_TOOL_OPTIONS='-Djava.awt.headless=false' && jconsole"
alias killgradlecache='rmr ~/.gradle/caches/modules-2/files-2.1/'
alias ll="ls -laG"
alias ls="ls -G"
alias mbr='mvn spring-boot:run'
alias mci="mvn clean install"
alias mcib="mci && mvn spring-boot:run"
alias mib="mi && mvn spring-boot:run"
alias mi="mvn install"
alias mimekill="find . -name jmimemagic.log | xargs rm"
alias msbr='mvn spring-boot:run'
alias mt='mvn test'
alias mti='mvn integration-test'
alias mysqldatadir="mysql -uroot -proot -e 'SHOW VARIABLES WHERE Variable_Name LIKE \"%dir\"'"
alias pj='python -mjson.tool'
alias proj='cd ~/projects'
alias repos='cd ~/projects/git-repos'
alias restartWindow="sudo killall -HUP WindowServer"
alias rmr="rm -rf"
alias showicons='defaults write com.apple.finder CreateDesktop true && killall Finder'
alias src="source ~/.zshrc"
alias u="cd .."
alias viz='vim ~/.zshrc'

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# added by travis gem
[ -f /Users/ryanwalker/.travis/travis.sh ] && source /Users/ryanwalker/.travis/travis.sh

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/ryanwalker/.sdkman"
[[ -s "/Users/ryanwalker/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/ryanwalker/.sdkman/bin/sdkman-init.sh"
