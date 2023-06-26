# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/ryan.walker/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
ZSH_CUSTOM="powerlevel10k/powerlevel10k"

export EDITOR=vim
#export JAVA8_HOME=`/usr/libexec/java_home -v 1.8`
#export JAVA11_HOME=`/usr/libexec/java_home -v 11`
#export JAVA_HOME=$JAVA11_HOME
alias j8='sdk default java 8.0.302-tem'
alias j11='sdk default java 11.0.14.10.1-amzn'


export MAVEN_DEBUG_OPTS="-Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=5005";
export MAVEN_OPTS="-Xms2048m -Xmx2048m -XX:ReservedCodeCacheSize=64m $REBEL_OPTS"
# export GRADLE_OPTS="-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=*:5001"
export AWS_CLI_HOME="$HOME/Library/Python/3.7/bin"

export PATH=$AWS_CLI_HOME:$PATH
export PATH=$HOME/software:$PATH

# Go env vars
export GOPATH=$HOME/go-workspace
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin:$GOROOT/bin
export PATH="$HOME/.cargo/bin:$PATH"

# Open Broadcast Studio
export OBS_DIR="${HOME}/obs/obs-studio"
export OBS_BIN="${HOME}/obs/obs-studio/build/rundir/RelWithDebInfo/bin"
export QTDIR='/usr/local/opt/qt'
alias obs="cd $OBS_DIR/build/rundir/RelWithDebInfo/bin && ./obs"

export MYSQL_HOST=127.0.0.1

export PATH="$HOME/.fastlane/bin:$PATH"

# replace mac sed with gnu-sed
export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"

unset portsearch;
function portsearch(){
    sudo lsof -i :$1
}

unset blah;
blah () {
    echo "BLAH"
}

unset b64d;
function b64d(){
    echo "$1" | base64 --decode
}

unset b64;
function b64(){
    echo "$1" | base64
}    

unset dayss;
function dayss() {
    echo "42";
}

unset kc;
function kc() {
    rm -rf ~/.m2/repository/*
    rm -rf ~/.gradle/caches/*
}

function tlp() {
  if [[ $@ =~ ^(dev|develop)$ ]]; then
    command tsh ssh -L 3308:swift-db-dev.kubra20181207.com:3306 --proxy=teleport.kube-ra.net:3080 --user=developer developer@teleport
  elif [[ $@ == "qa" ]]; then
    command tsh ssh -L 3308:swift-db-qa.kubra20181207.com:3306 --proxy=teleport.kube-ra.net:3080 --user=developer developer@teleport
  elif [[ $@ == "prod" ]]; then
    command tsh ssh -L 3308:swift-db.kubra20181207.com:3306 --proxy=teleport.kube-ra.net:3080 --user=developer developer@teleport
  else
    command tsh ssh --proxy=teleport.kube-ra.net:3080 --user=developer developer@teleport
  fi
}

# User configuration
export DEFAULT_USR=$(whoami);
export ENVVAR=123;

# This prints out how my time here at company
alias timeHere='python ~/projects/ryans-scripts/python/timeHere.py'

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration

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
# aliases
alias carddb='ssh -N card'
alias core='cd ~/projects/infusionsoft-core'
alias dbvis="nohup ~/applications/dbvis/dbvis &"
alias dm='docker-machine'
alias dotfiles='cd ~/.dotfiles'
alias dup='docker-compose up -d'
alias dpa='docker ps -a'
alias dp='docker ps'
alias dr='docker rm $(docker ps -aq)'
alias dri='docker rmi $(docker images -aq)'
alias ds='docker stop $(docker ps -q)'
alias dvr='docker volume rm $(docker volume ls -q)'

alias baldevinfo='curl -s https://dev.kubra.io/prepay/balances/actuator/info | jq .'
alias balqainfo='curl -s https://qa.kubra.io/prepay/balances/actuator/info | jq .'
alias balprodinfo='curl -s https://kubra.io/prepay/balances/actuator/info | jq .'

#teleport - kubectl
alias telDev='tsh ssh --proxy=teleport.kube-ra.net:3080 --user=developer -L3308:eks-east1-aurorastack-d3ruar4lj1u-databasecluster-1bfi59fjwwwcg.cluster-ro-cjktz302ymmw.us-east-1.rds.amazonaws.com:3306 developer@teleport'
alias telQa='tsh ssh -L 3308:eks-east1-aurorastack-d3ruar4lj1u-databasecluster-1d305c1n4aw52.cluster-cjktz302ymmw.us-east-1.rds.amazonaws.com:3306 --proxy=teleport.kube-ra.net:3080 --user=developer developer@teleport'
alias telProd='tsh ssh --proxy=teleport.kube-ra.net:3080 --user=developer -L3308:eks-west2-aurorastack-o67ae4kerwl-databasecluster-5mkjysc88iwh.cluster-cpfng8plsdnz.us-west-2.rds.amazonaws.com:3306 developer@teleport'

alias dk='docker stop $(docker ps -aq); docker rm $(docker ps -aq); docker volume rm $(docker volume ls -q);'

alias depclear='rm -rf ~/.gradle/caches && rm -rf ~/.m2/repository'

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

alias ideadir="cd ~/./Library/Application\ Support/JetBrains/Toolbox/apps/IDEA-U/ch-0/211.6693.111/IntelliJ\ IDEA.app/Contents/MacOS/"

alias mc="mvn clean"
alias mci="mvn clean install"
alias mcit="mvnDebug clean tomcat8:run"
alias mi="mvn install"
alias mic="mi -pl com.infusion.crm:newapi-contacts-client,com.infusion.crm:newapi-contacts-api,com.infusion.crm:newapi-contacts-contracts,com.infusion.crm:newapi-contacts-persist"
alias mit="mvnDebug tomcat8:run"
alias mt='mvn test'
alias mti='mvn integration-test'
alias mipl="mvn install -pl $1"
alias t9="mvn tomcat9:run -P development -P cas"
alias mt4="mvn clean install -T 4C"
alias msbr='mvn spring-boot:run'
alias mcib="mci && mvn spring-boot:run"
alias mbr='mvn spring-boot:run'
alias mib="mi && mvn spring-boot:run"

alias mimekill="find . -name jmimemagic.log | xargs rm"

alias mysqldeleteaccounts='echo "use prepay-balances; delete from account_transaction; delete from account;" | MYSQL_HOST=127.0.0.1 mysql -uroot -proot'
alias mysqldatadir="mysql -uroot -proot -e 'SHOW VARIABLES WHERE Variable_Name LIKE \"%dir\"'"
alias pj='python -mjson.tool'
alias proj='cd ~/projects'
alias repos='cd ~/projects/git-repos'
alias restartWindow="sudo killall -HUP WindowServer"
alias rmr="rm -rf"
alias showicons='defaults write com.apple.finder CreateDesktop true && killall Finder'
alias src="source ~/.zshrc"
alias tom="mvnDebug tomcat8:run"
alias tomdist="./infusionsoft-dist/target/dist/server/bin/catalina.sh jpda run"

alias u="cd .."
alias vim2='vim ~/.m2/settings.xml'
alias viz='vim ~/.dotfiles/zshrc'
alias vil='vim ~/.localrc'
alias cons='cd $HOME/projects/prepay-consumer'
alias ins='cd $HOME/projects/prepay-instances-api'
alias bal='cd $HOME/projects/prepay-balances-api'
alias use='cd $HOME/projects/prepay-usage-api'
alias pay='cd $HOME/projects/prepay-payments-api'
alias com='cd $HOME/projects/prepay-common'
alias qa='cd $HOME/projects/prepay-qa-tests'
alias gbr='gw bootRun'

alias mats='cd ~/projects/subscription-management-backend-tests'
alias ksm='cd ~/projects/subscription-management-service'
alias sub='cd ~/projects/subscription-management-service'
alias aim='cd ~/projects/app-inventory-management'

# mobile dev
alias ddd='rm -rf ~/Library/Developer/Xcode/DerivedData/'
alias fl='bundle exec fastlane'
alias im='cd ~/projects/infusionsoft-mobile'
alias simxs='xcrun simctl boot E8EA1DF4-D684-484E-8419-F35BE3B575FC'
alias simxsmax='xcrun simctl boot C52DD2FB-0380-4F64-A598-5CE0FA26DE6E'
alias dns='cat << EOM
http://east.dev.kubra20181207.com
http://west.dev.kubra20181207.com
http://east.qa.kubra20181207.com
http://west.qa.kubra20181207.com
http://east.kubra20181207.com
http://west.kubra20181207.com
EOM
'

alias rundb='docker run --rm --name postgres -e POSTGRES_PASSWORD=postgres -d -p 5432:5432 -v $HOME/docker/volumes/postgres:/var/lib/postgresql/data postgres'

# source ~/.localrc

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/ryan.walker/.sdkman"
[[ -s "/Users/ryan.walker/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/ryan.walker/.sdkman/bin/sdkman-init.sh"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
eval "$(direnv hook zsh)"
export GPG_TTY=$(tty)
eval "$(direnv hook zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/ryan.walker/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/ryan.walker/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/ryan.walker/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/ryan.walker/google-cloud-sdk/completion.zsh.inc'; fi

# eval "$(starship init zsh)"

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform
