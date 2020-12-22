# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

# fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/sharad.mishra/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"
# ZSH_THEME="gozilla"
# ZSH_THEME="tonotdo"
# ZSH_THEME="pygmalion-virtualenv"
# ZSH_THEME="powerlevel10k/powerlevel10k"
# ZSH_THEME="spaceship"
# ZSH_THEME="avit"
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# source ~/powerlevel10k/powerlevel10k.zsh-theme
#
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

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
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
source ~/powerlevel10k/config/p10k-robbyrussell.zsh
# source ~/powerlevel10k/config/p10k-classic.zsh
# source ~/powerlevel10k/config/p10k-pure.zsh
source ~/powerlevel10k/powerlevel10k.zsh-theme

# use vi bind key
bindkey -v

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias next='cd ~/Documents/ix/hubble/next'
alias hotfix='cd ~/Documents/ix/hubble/hotfix'
# alias dev='ssh hubble-dev@10.5.57.222'
export JAVA_HOME=$(/usr/libexec/java_home)
export SPARK_HOME=/Users/sharad.mishra/Library/spark/spark-2.4.4-bin-hadoop2.7
export POLYNOTE_HOME=/Users/sharad.mishra/Library/polynote
export HADOOP_HOME=/Users/sharad.mishra/Library/hadoop/hadoop-2.7.3
export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HADOOP_HOME/lib/native
export PATH=$PATH:$JAVA_HOME/bin:$SPARK_HOME/bin:$POLYNOTE_HOME/bin:$LD_LIBRARY_PATH:$HADOOP_HOME/bin:~/ansible/bin:/Users/sharad.mishra/mysqlrouter/mysql-router-8.0.22-macos10.15-x86_64/bin:/usr/local/go/bin
# :$(go env GOPATH)/bin
export HADOOP_OPTS="$HADOOP_OPTS -Djava.library.path=$HADOOP_HOME/lib/native"
export GOPATH=$HOME/go
export GOROOT=/usr/local/go
export GOPRIVATE=*.indexexchange.com
export GOPROXY=https://proxy.golang.org
export GOSUMDB=off
export GO111MODULE=on
alias hstart="${HADOOP_HOME}/sbin/start-dfs.sh;${HADOOP_HOME}/sbin/start-yarn.sh"
alias hstop="${HADOOP_HOME}/sbin/stop-dfs.sh;${HADOOP_HOME}/sbin/stop-yarn.sh"
alias python="python3"
export SBT_OPTS="-Xmx2G"
alias gateway1='ssh hubble-dev@10.5.57.218'
alias gateway2='ssh hubble-dev@10.5.57.219'
alias filedump='ssh 10.7.1.253'
alias v='nvim'
alias sshp='ssh -i ~/.ssh/id_rsa_privileged'
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
#export FZF_DEFAULT_OPS="--extended"
export FZF_DEFAULT_OPTS="
--layout=reverse
--info=inline
--height=80%
--multi
--preview-window=:hidden
--preview '([[ -f {} ]] && (bat --style=numbers --color=always {} || cat {})) || ([[ -d {} ]] && (tree -C {} | less)) || echo {} 2> /dev/null | head -200'
--color='hl:148,hl+:154,pointer:032,marker:010,bg+:237,gutter:008'
--prompt='∼ ' --pointer='▶' --marker='✓'
--bind '?:toggle-preview'
--bind 'ctrl-a:select-all'
--bind 'ctrl-y:execute-silent(echo {+} | pbcopy)'
--bind 'ctrl-e:execute(echo {+} | xargs -o vim)'
--bind 'ctrl-v:execute(code {+})'
"
export FZF_DEFAULT_COMMAND="fd . $HOME"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd -t d . $HOME"

# export default editor to vim
export EDITOR='vim'
autoload -U edit-command-line
zle -N edit-command-line
bindkey '^xe' edit-command-line
bindkey '^x^e' edit-command-line
bindkey jk vi-cmd-mode
bindkey kj vi-cmd-mode
bindkey jj vi-cmd-mode

#ZSH AutoComplete/SyntaxHighlight Settings
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#75756e"
(( ${+ZSH_HIGHLIGHT_STYLES} )) || typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none
#ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#6e7520"
bindkey '^ ' autosuggest-accept
bindkey '^e' autosuggest-toggle

# for removing %sign in VSCODE
unsetopt PROMPT_SP

source /Users/sharad.mishra/.config/broot/launcher/bash/br

alias "shopt='/usr/local/bin/shopt'"

# History related stuff
HISTFILESIZE=10000
HISTIGNORE="ls:ll:exit:clear:cd:top:htop*:history*:rm*"
# don't put duplicate lines or lines starting with space 
# in the history. See bash(1) for more options 
HISTCONTROL=ignoreboth:erasedups 
# append to the history file, don't overwrite it
shopt -s histappend 
# Write a multi line command in a single line
shopt -s cmdhist

# http://stackoverflow.com/questions/338285/prevent-duplicates-from-being-saved-in-bash-history
# remove duplicates while preserving input order
function dedup {
   #awk '! x[$0]++' $@
   tac $@ | awk '! x[$0]++' | tac
}

# removes $HISTIGNORE commands from input
function remove_histignore {
   if [ -n "$HISTIGNORE" ]; then
      # replace : with |, then * with .*
      local IGNORE_PAT=`echo "$HISTIGNORE" | sed s/\:/\|/g | sed s/\*/\.\*/g`
      # negated grep removes matches
      grep -vx "$IGNORE_PAT" $@
   else
      cat $@
   fi
}

# clean up the history file by remove duplicates and commands matching
# $HISTIGNORE entries
function history_cleanup {
   local HISTFILE_SRC=~/.zsh_history
   local HISTFILE_DST=/tmp/.$USER.zsh_history.clean
   if [ -f $HISTFILE_SRC ]; then
      \cp $HISTFILE_SRC $HISTFILE_SRC.backup
      #Via gli spazi alla fine del file
      LC_CTYPE=C sed -i '' "s/*$//" $HISTFILE_SRC
      dedup $HISTFILE_SRC | remove_histignore >| $HISTFILE_DST
      \mv $HISTFILE_DST $HISTFILE_SRC
      chmod go-r $HISTFILE_SRC
   fi
}

# clean bash history when starting a new interactive shell
case "$-" in
    *i*) history_cleanup
esac
