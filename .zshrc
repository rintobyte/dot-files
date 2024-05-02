# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# history
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e


autoload -U compinit
compinit


# tab through files
zstyle ':completion:*' menu select
# try match case sensitively then try case insensitive
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'


# shift tab to go to previous item
bindkey '^[[Z' reverse-menu-complete

# skip to beginning or end of a line
bindkey '^a' beginning-of-line
bindkey '^e' end-of-line


# plugins/ themes
source ~/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/zsh-history-substring-search/zsh-history-substring-search.zsh

source ~/.config/zsh/powerlevel10k/powerlevel10k.zsh-theme


# history substring search options
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
