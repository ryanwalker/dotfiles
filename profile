#!/bin/bash

#Java
export JAVA_HOME=`/usr/libexec/java_home -v 1.7`
export JAVA6_HOME=`/usr/libexec/java_home -v 1.6`
export JAVA7_HOME=`/usr/libexec/java_home -v 1.7`
export JAVA8_HOME=`/usr/libexec/java_home -v 1.8`
alias j6='export JAVA_HOME=$JAVA6_HOME'
alias j7='export JAVA_HOME=$JAVA7_HOME'
alias j8='export JAVA_HOME=$JAVA8_HOME'

export DEVTOOLS=/usr/local/devtools

export SPRING_HOME=$DEVTOOLS/spring

export ANT_HOME=$DEVTOOLS/ant
export GANT_HOME=$DEVTOOLS/gant
export MAVEN_HOME=$DEVTOOLS/maven
export M2_HOME=$DEVTOOLS/maven
export GROOVY_HOME=$DEVTOOLS/groovy
export REBEL_HOME=$DEVTOOLS/jrebel
export GRAILS_HOME=$DEVTOOLS/grails
export GRADLE_HOME=$DEVTOOLS/gradle
export NEXUS_HOME=$DEVTOOLS/nexus/nexus
export PLAY_HOME="$DEVTOOLS/play"
# export JAVA_TOOL_OPTIONS='-Djava.awt.headless=true'
export MAVEN_OPTS="-Xmx1536m -XX:ReservedCodeCacheSize=64m -XX:MaxPermSize=512m -XX:CompileCommand=exclude,com/infusion/databridge/MemoryRst,loadMeta -Dfile.encoding=ISO-8859-1"
# -javaagent:$DEVTOOLS/AppDynamicsLite/AppServerAgentLite/javaagent.jar"
#export MAVEN_DEBUG_OPTS="-Xdebug -Xnoagent -Djava.compiler=NONE -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=8000"

export ANT_OPTS="-Dfile.encoding=ISO-8859-1"
export JAVA_OPTS="-Xms256m -Xmx1024m -XX:MaxPermSize=128m"

export EDITOR="vim"
export SVNROOT="https://scm.infusiontest.com/svn/crmalpha"
export CASSANDRA_HOME=$DEVTOOLS/cassandra

export PATH=~/devtools/visualvm/bin:~/bin:/usr/local/bin:/usr/local/mysql/bin:$MAVEN_HOME/bin:$ANT_HOME/bin:$GRAILS_HOME/bin:$GANT_HOME/bin:$PATH
export PATH=$JAVA_HOME/bin:$GROOVY_HOME/bin:$PLAY_HOME:$SPRING_HOME/bin:$GRADLE_HOME/bin:$CASSANDRA_HOME/bin:$PATH

# GRAPHITE INSTALL ###########
export PYTHONPATH="/usr/local/Cellar/python/2.7.5"
export PATH="$PYTHONPATH/bin:$PATH"
export LD_LIBRARY_PATH="$PYTHONPATH/:$PYTHONPATH/lib/:$LD_LIBRARY_PATH"
export LINKFLAGS='-search_dylibs_first -L $PYTHONPATH/lib/'
export ARCHFLAGS='-arch x86_64'
export CC="/usr/bin/gcc"
export PKG_CONFIG_PATH='/usr/local/Cellar/cairo/1.12.14/lib/pkgconfig/'
# GRAPHITE INSTALL ###########

source $HOME/.dotfiles/grails_autocomplete
source $HOME/devtools/git-completion.bash 

alias ll="ls -lG"
alias la="ls -laG"
alias ls="ls -G"
alias u="cd .."
alias work="su - ryan"
alias rmr="rm -rf"
alias tom="emtd"
alias tom6="emtd6"
# alias tom="mvnRebel | colout \"\\[INFO\\].*$\" green bold | colout \"\\[WARNING\\].*$\" yellow bold | colout \"\\[ERROR\\].*$\" red bold"
# alias tom="mvnRebel"
# alias tom6=mvnRebel7
alias tommy="./dist/server/bin/catalina.sh jpda run"
alias catal="./infusionsoft-dist/target/dist/server/bin/catalina.sh jpda run"
alias dbvis="nohup ~/applications/dbvis/dbvis &"
alias mci="mvn clean install"
alias umci="svn up && mci"
alias mcit6="j7 && mvn clean install && tom6"
alias mcit="mci && tom"
alias umcit="svn up && mci && tom"
alias mi="mvn install"
alias mit="mi && tom"
alias mit6="j7 && mi && tom6"
alias emt="mvn tomcat:run -pl webapp"
alias emtd="mvnDebug tomcat:run -pl webapp"
alias emtd6="mvnDebug tomcat6:run -pl webapp"
alias src="source ~/.profile"
alias bn="grep SNAPSHOT pom.xml | sed -e 's,<[^>]*>\|-SNAPSHOT\| *,,g'"
alias synctrunk="svn merge ^/crmalpha/trunk"
alias mimekill="find . -name jmimemagic.log | xargs rm"
alias catalina="./infusionsoft-dist/target/dist/server/bin/catalina.sh jpda run"
alias restartWindow="sudo killall -HUP WindowServer"
alias buildwithcamp="mvn clean && mvn install -P front && mvn install -P camp"
alias runfront="sh infusionsoft-dist/target/front/server/bin/catalina.sh jpda run"
alias runcamp="sh infusionsoft-dist/target/camp/server/bin/catalina.sh jpda run"
alias jc="export JAVA_TOOL_OPTIONS='-Djava.awt.headless=false' && jconsole"
alias pj='python -mjson.tool'
alias repos='cd ~/projects/git-repos'
alias proj='cd ~/projects'

#prompt customization
#export PS1='\[\033]0;$WINDOW_TITLE  on \H [\w]\007
#:\033[34m\]\u@\h \[\033[31m\w\033[0m\]
#$ '

alias filter="svn status | grep -v \"^ M\""
# alias cleardelta='mysql -ueric -peric5425 -e "DELETE FROM ryanw.DatabaseDeltaLog; DELETE FROM infusionsoft.DatabaseDeltaLog;"'

unset title;
function title(){
	echo -n -e "\033]0;$1\007"
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
unset ev;
function ev(){
	svn update && mvn clean install && tom;
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

unset get;
function getbranch(){
        cd ~/projects
        svn co https://scm.infusiontest.com/svn/crmalpha/branches/crm-$1 $2
}

unset qo;
function qo(){
	vi $(find . -name $1 | xargs)
}

unset mt;
function mt() {
	svn up && svn log --limit 5 | grep '| ryan |' | awk '{print $1}' | sed 's/r//' | xargs -n 1 -0 -I rev svn merge -c rev . ../trunk
}

unset m;
function m() {
        svn up && svn log --limit 5 | grep '| ryan |' | awk '{print $1}' | sed 's/r//' | xargs -n 1 -0 -I rev svn merge -c rev . ../$1
}

#probably can get rid of mergetrunk because of the above 2 scripts
unset mergetrunk;
function mergetrunk(){
	if [ $# -lt 1 ]; then
        	echo 'need revision'
	else
		svn merge -c $1 . ~/projects/trunk
	fi
}

##
# Your previous /Users/ryanw/.profile file was backed up as /Users/ryanw/.profile.macports-saved_2012-01-20_at_14:17:03
##

# MacPorts Installer addition on 2012-01-20_at_14:17:03: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


# Setting PATH for Python 3.3
# The orginal version is saved in .profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.3/bin:${PATH}"
export PATH

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

function _update_ps1() {
       export PS1="$(~/powerline-shell.py $? 2> /dev/null)"
}

# export PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/ryanw/.gvm/bin/gvm-init.sh" ]] && source "/Users/ryanw/.gvm/bin/gvm-init.sh"