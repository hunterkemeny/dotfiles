# Terminal Settings
echo "Hello, friend"
export PATH=$PATH:/Users/hunterkemeny/bin
export PS1=">> "

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# For npm priveledges
export PATH="$PATH:$HOME/npm/bin"
export NODE_PATH="$NODE_PATH:$HOME/npm/lib/node_modules"

# Setting PATH for Python 3.8
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"
export PATH

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/hunterkemeny/google-cloud-sdk/path.bash.inc' ]; then . '/Users/hunterkemeny/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/hunterkemeny/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/hunterkemeny/google-cloud-sdk/completion.bash.inc'; fi

source /Users/hunterkemeny/.config/broot/launcher/bash/br
