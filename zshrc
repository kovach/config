# basics
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
unsetopt share_history

setopt extendedglob
setopt auto_cd
autoload -U colors
colors

# names
source ~/.aliases
export PATH=/home/scott/bin:$PATH
WORDCHARS="*?_-.[]~=&;!#$%^(){}<>" # Remove / from default

# Prompt functions
function gitbase {
  n=$(basename $(git rev-parse --show-toplevel 2>/dev/null) 2>/dev/null)
  b=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
  if [[ -n $n && -n $b ]]; then
    echo "${n}:${b}:"
  fi
}

# Prompt
setopt prompt_subst
gitlabel='$(gitbase)'
code='${?}'
pcode='%(?.$?.%{$fg[red]%}$?%{$reset_color%})' # red on error
PROMPT="%{$fg[magenta]%}${gitlabel}%1~ %{$reset_color%}"
RPROMPT="%{$fg[green]%}%~ ${pcode}%{$reset_color%}"
