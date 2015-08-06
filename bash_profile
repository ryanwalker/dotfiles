# .bash_profile will run only on login
# ------------------------------------
#
# First thing we want to do is load the .bashrc file the majority of settings
# including custom paths and aliases will go in the .bashrc so we have access
# to them in a new terminal session.
#

[ -r ~/.bashrc ] && source ~/.bashrc

[ -r ~/.localrc ] && source ~/.localrc

[ -r ~/.git-completion.bash ] && source ~/.git-completion.bash

[ -r ~/.grails_autocomplete ] && source ~/.grails_autocomplete


#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/ryanw/.gvm/bin/gvm-init.sh" ]] && source "/Users/ryanw/.gvm/bin/gvm-init.sh"

