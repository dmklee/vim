export PATH="/home/david/anaconda3/bin:$PATH"

# to get colors to work within tmux
export TERM="screen-256color"

## Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
## Initialization code that may require console input (password prompts, [y/n]
## confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

##
## Executes commands at the start of an interactive session.
##
## Authors:
##   Sorin Ionescu <sorin.ionescu@gmail.com>
##

### Source Prezto.
##if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  ##source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
##fi

## Customize to your needs...
source ~/.zplug/init.zsh
zplug "woefe/wbase.zsh"
zplug "zsh-users/zsh-autosuggestions"
zplug "clvv/fasd"
zplug "b4b4r07/enhancd"
zplug "junegunn/fzf"
zplug "Peltoche/lsd"
zplug "g-plane/zsh-yarn-autocompletions"
zplug "romkatv/powerlevel10k", as:theme, depth:1
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug load

## To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

## open zsh when using tmux
##if [ -z $TMUX ]; then; tmux; fi

# Aliases
alias la='ls -lah --color=auto'
alias lh='ls -lh --color=auto'
alias ls='ls --color=auto'
alias l='ls --color=auto'
alias grep='grep --color=auto'
alias venv='source venv/bin/activate'

# fzf settings. Uses sharkdp/fd for a faster alternative to `find`.
FZF_CTRL_T_COMMAND='fd --type f --hidden --exclude .git --exclude .cache'
FZF_ALT_C_COMMAND='fd --type d --hidden --exclude .git'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
. /home/david/anaconda3/etc/profile.d/conda.sh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/david/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/home/david/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/david/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/david/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
