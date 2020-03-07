# ENVIRONMENT VARIABLES

export PATH="$PATH:$HOME/.local/bin:$HOME/bin:/home/linden/.gem/ruby/2.7.0/bin"
export EDITOR=nvim
export BROWSER=firefox
export XDG_CONFIG_HOME=$HOME/.config

# Aliases 

if [[ -s "/usr/local/bin/nvim" ]] || [[ -s "/usr/bin/nvim" ]]; then
  alias v="nvim"
  alias vi="nvim"
  alias vim="nvim"
else
  alias v="vim"
  alias vi="vim"
fi

# Fzf settings
