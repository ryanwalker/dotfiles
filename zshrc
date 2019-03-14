# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/ryan.walker/.oh-my-zsh

export EDITOR=vim

# exports
#export JAVA7_HOME=`/usr/libexec/java_home -v 1.7`
export JAVA7_HOME=`/usr/libexec/java_home -v 1.7`
export JAVA8_HOME='/Users/ryan.walker/.sdkman/candidates/java/current/bin/'
export JAVA9_HOME=`/usr/libexec/java_home -v 9`

export JAVA_HOME=$JAVA8_HOME

alias j7='JAVA_HOME=$JAVA7_HOME; export PATH=$JAVA_HOME/bin:$PATH'
alias j8='JAVA_HOME=$JAVA8_HOME; export PATH=$JAVA_HOME/bin:$PATH'
alias j9='JAVA_HOME=$JAVA9_HOME; export PATH=$JAVA_HOME/bin:$PATH'


# PATH Setup
export DEVTOOLS="$HOME/devtools"
export GOOGLE_CLOUD_SDK_HOME="$DEVTOOLS/google-cloud-sdk"
export REBEL_HOME=$DEVTOOLS/jrebel
export REBEL_OPTS="-agentpath:$REBEL_HOME/lib/libjrebel64.dylib"
export MAVEN_OPTS="-Xms2048m -Xmx2048m -XX:MaxPermSize=2048m -XX:ReservedCodeCacheSize=64m $REBEL_OPTS"
export JASYPT_HOME=$DEVTOOLS/jasypt
export CORE_HOME=$HOME/projects/infusionsoft-core
export PYTHON_HOME=$HOME/Library/Python/2.7

export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/.gopath


export PATH=$GOPATH/bin:$GOROOT/bin:$GOOGLE_CLOUD_SDK_HOME/bin:$JASYPT_HOME/bin:$DEVTOOLS:$PATH
export PATH=$CORE_HOME/bin:$PATH
export PATH=$PYTHON_HOME/bin:$PATH

export MYSQL_HOST=127.0.0.1

# export IS_APPOINTMENTSAPI_SERVICEACCOUNT=$(gsutil cat gs://is-appointments-api-sand-dev-resources/service-account.json | base64)
# export CREDENTIALS_API_KEY=$(gsutil cat gs://is-appointments-api-sand-dev-resources/credentials-api-key.txt)

# Export Keychain Secrets
#export AWS_ACCESS_KEY_ID=$(security find-generic-password -wa AWS_ACCESS_KEY_ID)
#export AWS_SECRET_ACCESS_KEY=$(security find-generic-password -wa AWS_SECRET_ACCESS_KEY)

unset portsearch;
function portsearch(){
    sudo lsof -i :$1
}

unset b64d;
function b64d(){
    echo "$1" | base64 --decode
    echo ''
}

unset mrf;
function mrf() {
    if [ -z "$1" ]; then
        echo "Please provide a module to resume from.";
    else
        mvn install -rf :$1
    fi
}

export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Disable 'functions' built-in so google-cloud-funciton-emulator 'functions' works
disable functions

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
alias contacts='sg1 && cd contacts-api'
alias core='cd ~/projects/infusionsoft-core'
alias dbvis="nohup ~/applications/dbvis/dbvis &"
alias dm='docker-machine'
alias dockerinit='$(boot2docker shellinit)'
alias dotfiles='cd ~/.dotfiles'
alias dup='docker-compose up -d'

# Gradle
alias br='gw clean bootRun'
alias gs='gw geerateServer'
alias gbuild='gw clean build'
alias grun='gw clean runApp'
alias gck='rmr ~/.gradle/caches/modules-2/files-2.1/'

alias gp='git pull'
alias hideicons='defaults write com.apple.finder CreateDesktop false && killall Finder'
alias jc="export JAVA_TOOL_OPTIONS='-Djava.awt.headless=false' && jconsole"
alias ll="ls -laG"
alias ls="ls -G"

alias mc="mvn clean"
alias mci="mvn clean install"
alias mcit="mvnDebug clean tomcat8:run"
alias mi="mvn install"
alias mic="mi -pl com.infusion.crm:newapi-contacts-client,com.infusion.crm:newapi-contacts-api,com.infusion.crm:newapi-contacts-contracts,com.infusion.crm:newapi-contacts-persist"
alias mit="mvnDebug tomcat8:run"
alias mt='mvn test'
alias mti='mvn integration-test'
alias mipl="mvn install -pl $1"

alias msbr='mvn spring-boot:run'
alias mcib="mci && mvn spring-boot:run"
alias mbr='mvn spring-boot:run'
alias mib="mi && mvn spring-boot:run"

alias mimekill="find . -name jmimemagic.log | xargs rm"

alias mysqldatadir="mysql -uroot -proot -e 'SHOW VARIABLES WHERE Variable_Name LIKE \"%dir\"'"
alias pj='python -mjson.tool'
alias proj='cd ~/projects'
alias repos='cd ~/projects/git-repos'
alias restartWindow="sudo killall -HUP WindowServer"
alias rmr="rm -rf"
alias showicons='defaults write com.apple.finder CreateDesktop true && killall Finder'
alias src="source ~/.zshrc"
alias sg1='cd ~/projects/sg1'
alias tom="mvnDebug tomcat8:run"
alias tomdist="./infusionsoft-dist/target/dist/server/bin/catalina.sh jpda run"

alias tasks='sg1 && cd tasks-api'
alias u="cd .."
alias vim2='vim ~/.m2/settings.xml'
alias viz='vim ~/.zshrc'

# mobile dev
alias ddd='rm -rf ~/Library/Developer/Xcode/DerivedData/'
alias fl='bundle exec fastlane'
alias im='cd ~/projects/infusionsoft-mobile'
alias simxs='xcrun simctl boot E8EA1DF4-D684-484E-8419-F35BE3B575FC'
alias simxsmax='xcrun simctl boot C52DD2FB-0380-4F64-A598-5CE0FA26DE6E'

# Scripts and commands to run at startup
node ~/projects/javascript/dayssince.js;
# docker-compose -f ~/projects/infusionsoft-core/docker-compose.yml up -d

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/ryan.walker/.sdkman"
[[ -s "/Users/ryan.walker/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/ryan.walker/.sdkman/bin/sdkman-init.sh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/ryan.walker/devtools/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/ryan.walker/devtools/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/ryan.walker/devtools/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/ryan.walker/devtools/google-cloud-sdk/completion.zsh.inc'; fi

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="/usr/local/opt/ruby/bin:$PATH"
