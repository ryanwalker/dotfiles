# .bash_profile will run only on login
# ------------------------------------
#
# First thing we want to do is load the .bashrc file the majority of settings
# including custom paths and aliases will go in the .bashrc so we have access
# to them in a new terminal session.
#

if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

if [ -f ~/.git-completion.bash ]; then
  source ~/.git-completion.bash
fi

if [ -f ~/.grails-completion.bash ]; then
  source ~/.grails-completion.bash
fi


#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/ryanw/.gvm/bin/gvm-init.sh" ]] && source "/Users/ryanw/.gvm/bin/gvm-init.sh"

