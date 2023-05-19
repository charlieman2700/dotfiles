# Fig pre block. Keep at the top of this file.
# # Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below. if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Paths
export PATH="$PATH:/Users/charlie/development/flutter/bin"
export PATH="$HOME/.config/tmux/plugins/tmuxifier/bin:$PATH"
export XDG_CONFIG_HOME="$HOME/.config" #For lazygit

# Plugins
source ~/dotfiles/zsh/plugins/powerlevel10k/powerlevel10k.zsh-theme
source ~/dotfiles/zsh/plugins/highlighting/zsh-syntax-highlighting.zsh
source ~/dotfiles/zsh/plugins/vimZsh/zsh-vi-mode.plugin.zsh
source ~/dotfiles/zsh/lfcd.sh
source ~/dotfiles/zsh/tmuxSession.sh
source ~/dotfiles/zsh/plugins/autocomplete/zsh-autocomplete.plugin.zsh


# Rust
source "$HOME/.cargo/env"

 # Zoxyde and fzf brew install fzf zoxyde
eval "$(zoxide init zsh)"
export EDITOR="nvim"


#Aliases
alias rld="source ~/.zshrc"
alias ls="lsd"
alias tn="tmux_new_session"
alias cl="clear"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
#Bind
# bindkey -s '^o' 'lfcd\n'  # Control O zsh lf file manager cd on exit
bindkey '\e[A' history-beginning-search-backward
bindkey '\e[B' history-beginning-search-forward
bindkey '\t' menu-select "$terminfo[kcbt]" menu-select
bindkey -M menuselect '\t' menu-complete "$terminfo[kcbt]" reverse-menu-complete
# Fig post block. Keep at the bottom of this file.
export PATH="/usr/local/opt/llvm/bin:$PATH"
export PATH="~/.local/bin:$PATH"
