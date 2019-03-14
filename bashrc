#!/bin/bash

#Java
export JAVA8_HOME=`/usr/libexec/java_home -v 1.8`
export JAVA_HOME=$JAVA8_HOME

export DEVTOOLS=~/devtools
export CONNECTIQ_HOME=$DEVTOOLS/connectiq
export SPRING_HOME=$DEVTOOLS/spring

export ANT_HOME=$DEVTOOLS/ant
export GANT_HOME=$DEVTOOLS/gant
export GOPATH=$HOME/projects/go
export M3_HOME=/usr/local/Cellar/maven/3.3.9
#export GRAILS_HOME=$DEVTOOLS/grails
#export GRADLE_HOME=$DEVTOOLS/gradle
export ACTIVATOR_HOME="$DEVTOOLS/activator"

export MAVEN_OPTS="-Xms2048m -Xmx2048m -XX:MaxPermSize=2048m -XX:ReservedCodeCacheSize=64m -XX:CompileCommand=exclude,com/infusion/databridge/MemoryRst,loadMeta -Dfile.encoding=ISO-8859-1"

export ANT_OPTS="-Dfile.encoding=ISO-8859-1"
export JAVA_OPTS="-Xms256m -Xmx1024m" #-XX:MaxPermSize=512m

export EDITOR="vim"
export CASSANDRA_HOME=$DEVTOOLS/cassandra
export MYSQL_HOST=127.0.0.1
export APPENGINE_JAVA_SDK_HOME="$DEVTOOLS/appengine-java-sdk"

export PATH=~/devtools/visualvm/bin:~/bin:/usr/local/bin:/usr/local/mysql/bin:$M3_HOME/bin:$ANT_HOME/bin:$APPENGIN_JAVA_SDK_HOME/bin:$GRAILS_HOME/bin:$GANT_HOME/bin:$CONNECTIQ_HOME/bin:$PATH
export PATH=$JAVA_HOME/bin:$GROOVY_HOME/bin:$PLAY_HOME:$SPRING_HOME/bin:$GRADLE_HOME/bin:$CASSANDRA_HOME/bin:/$ACTIVATOR_HOME:$GOPATH/bin:$CONNEC$PATH
#export DOCKERHUB_EMAIL=$(security find-generic-password -wa dockerhub_email)
#export DOCKERHUB_USERNAME=$(security find-generic-password -wa dockerhub_username)
#export DOCKERHUB_PASSWORD=$(security find-generic-password -wa dockerhub_password)
#export AWS_ACCESS_KEY_ID=$(security find-generic-password -wa aws_access_key_id)
#export AWS_SECRET_ACCESS_KEY=$(security find-generic-password -wa aws_secret_access_key)
#export GITHUB_ACCESS_TOKEN=$(security find-generic-password -wa github)
#export CIRCLE_CI_TOKEN=$(security find-generic-password -wa circle_ci_token)
#export DELPOY_USERNAME=$(security find-generic-password -wa delpoyusername)
#export DELPOY_PASSWORD=$(security find-generic-password -wa delpoypassword)
#export CODECOVE_API_TOKEN=$(security find-generic-password -wa CODECOV_API_TOKEN)

export DELPOY_URL='http://localhost:8080'
alias proddelpoy="export DELPOY_URL='https://delpoy.sbsp.io'"
alias devdelpoy="export DELPOY_URL='http://localhost:8080'"

alias standup="open https://zoom.us/j/765433829; open https://jira.infusionsoft.com/secure/RapidBoard.jspa?rapidView=124"
alias ddclean="rm -rf ~/Library/Developer/Xcode/DerivedData/"
unset b64;
alias showfiles='defaults write com.apple.finder AppleShowAllFiles YES'
alias hidefiles='defaults write com.apple.finder AppleShowAllFiles NO'
b64() {
    echo -n "$1" | openssl base64
}
unset b64d;
b64d() {
    echo -n "$1" | base64 --decode
}
unset nontwostep;
function nontwostep() {
	curl --silent -H "Authorization: token $GITHUB_ACCESS_TOKEN" https://api.github.com/orgs/infusionsoft/members\?filter\=2fa_disabled\&page=$1\&per_page=$2
}
function deploykeys() {
	curl -H "Authorization: itoken $GITHUB_ACCESS_TOKEN" https://api.github.com/repos/ryanwalker/grails-docker-exampld/keys
}

# amaon aws cli auto-completion
complete -C aws_completer aws

alias ll="ls -laG"
alias ls="ls -G"
alias u="cd .."
alias work="su - ryan"
alias rmr="rm -rf"
alias tom="emtd"
alias tom6="emtd6"
alias addgitignore="find * -type d -empty -exec touch {}/.gitignore \;"
alias catrun="./infusionsoft-dist/target/dist/server/bin/catalina.sh jpda run"
alias dbvis="nohup ~/applications/dbvis/dbvis &"
alias mci="mvn clean install"
alias mcit="mci && tom6"
#alias mcit="mci && tom"
alias mi="mvn install"
alias mit="mi && tom"
alias mit6="mi && tom6"
alias mt="mvn test"
alias emt="mvn tomcat:run -pl webapp"
alias emtd="mvnDebug tomcat:run -pl webapp"
alias emtd6="mvnDebug tomcat6:run -pl webapp"
alias src="source ~/.bash_profile"
alias mimekill="find . -name jmimemagic.log | xargs rm"
alias restartWindow="sudo killall -HUP WindowServer"
alias buildwithcamp="mvn clean && mvn install -P front && mvn install -P camp"
alias runfront="sh infusionsoft-dist/target/front/server/bin/catalina.sh jpda run"
alias runcamp="sh infusionsoft-dist/target/camp/server/bin/catalina.sh jpda run"
alias jc="export JAVA_TOOL_OPTIONS='-Djava.awt.headless=false' && jconsole"
alias pj='python -mjson.tool'
alias repos='cd ~/projects/git-repos'
alias proj='cd ~/projects'
alias dockerinit='$(boot2docker shellinit)'
alias dotfiles='cd ~/.dotfiles'
alias killgradlecache='rmr ~/.gradle/caches/modules-2/files-2.1/'
alias core='cd ~/projects/infusionsoft-core'
alias mysqldatadir="mysql -uroot -proot -e 'SHOW VARIABLES WHERE Variable_Name LIKE \"%dir\"'"
alias gbuild='gradle clean build'
alias grun='gradle clean runApp'
alias gbrun='gradle clean bootRun'
alias dm='docker-machine'
alias hideicons='defaults write com.apple.finder CreateDesktop false && killall Finder'
alias showicons='defaults write com.apple.finder CreateDesktop true && killall Finder'
alias carddb='ssh -N card'
export PS1="\[\033]0;$WINDOW_TITLE  on \H [\w]\007
:\033[34m\]\u@\h \[\033[31m\w\033[0m\]
\$(parse_git_branch)\[\033[00m\] $ "


unset bn;
function bn () {
    VERSION=`grep 'SNAPSHOT</version>' pom.xml | sed -e 's/<version>[(.*)]-SNAPSHOT<\/version>//g' | sed -e 's/<version>//g' | sed -e 's/-SNAPSHOT<\/version>//g' | gsed -e 's/\s\+//g'`
    echo $VERSION | pbcopy
    echo "$VERSION copied"
}
unset githubnon2step;
function githubnon2step () {
        curl -H "Authorization: token $GITHUB_ACCESS_TOKEN" https://api.github.com/orgs/infusionsoft/members\?filter\=2fa_disabled
}

unset title;
function title(){
	echo -n -e "\033]0;$1\007"
}
unset portsearch;
function portsearch(){
	sudo lsof -i :$1
}
unset ports;
function ports(){
	sudo lsof -i -P | grep -i "listen"
}
unset gradle;
function gradle(){
	# if gradlew file exists use it
	if [ -f ./gradlew ]
	then
	    echo 'USING gradlew...'
	    ./gradlew "$@"
	else
	    echo 'USING gradle on PATH...'
	    sh $GRADLE_HOME/bin/gradle "$@"
	fi
}

unset apitest;
function apitest(){
	groovy -cp plugins/xmlrpc-0.1/lib/groovy-xmlrpc-0.3.jar src/groovy/$1
}

unset plugins;
function plugins(){
	mysql -u eric -peric5425 < ~/projects/dbscripts/plugins.sql
}

unset dbinit;
function dbinit(){
	ant db-init -Ddatabase=$1 -Drole=localhost
}

unset metricsListen;
function metricsListn(){
	while [ 1 ]; do
  	echo "Listening at `date`"
  	nc -l 2003
	done
}

unset headless;
function headless(){
	export JAVA_TOOL_OPTIONS='-Djava.awt.headless=true';
}

unset gittrackemptydirs;
function gittrackemptydirs(){
	for i in $(find . -type d -regex ``./[^.].*'' -empty); do touch $i"/.gitignore"; done;
}

unset mvnTest;
function mvnTest() {
	mvn test -P regression -pl $1 -Dtest=$2
}


unset runTestMail;
function runTestmail(){
        cd ~/projects/testmail/
	./local_server.sh
        nohup mvn exec:java
}

unset qo;
function qo(){
	vi $(find . -name $1 | xargs)
}

# Setting PATH for Python 3.3
# The orginal version is saved in .profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.3/bin:${PATH}"
export PATH

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

function _update_ps1() {
       export PS1="$(~/powerline-shell.py $? 2> /dev/null)"
}

#export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

PATH="/Users/ryanw/perl5/bin${PATH+:}${PATH}"; export PATH;
PERL5LIB="/Users/ryanw/perl5/lib/perl5${PERL5LIB+:}${PERL5LIB}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/ryanw/perl5${PERL_LOCAL_LIB_ROOT+:}${PERL_LOCAL_LIB_ROOT}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/ryanw/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/ryanw/perl5"; export PERL_MM_OPT;

# The next line updates PATH for the Google Cloud SDK.
#source '/Users/ryanw/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
#source '/Users/ryanw/google-cloud-sdk/completion.bash.inc'

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/ryanw/.gvm/bin/gvm-init.sh" ]] && source "/Users/ryanw/.gvm/bin/gvm-init.sh"

# added by travis gem
[ -f /Users/ryanwalker/.travis/travis.sh ] && source /Users/ryanwalker/.travis/travis.sh


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
