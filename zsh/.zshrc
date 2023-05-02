# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below. if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Paths
export PATH="$PATH:/Users/charlie/development/flutter/bin"
export PATH="$PATH:/Users/charlie/.local/bin"
export PATH="$PATH:/usr/local/lib/node_modules/node/bin";
export PATH=$PATH:binDirectoryPath
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export PATH="$HOME/.config/tmux/plugins/tmuxifier/bin:$PATH"

# Plugins
source ./plugins/powerlevel10k/powerlevel10k.zsh-theme
source ./plugins/highlighting/zsh-syntax-highlighting.zsh
  # Zoxyde and fzf brew install fzf zoxyde
eval "$(zoxide init zsh)"

#Aliases
alias rld="source ./.zshrc"


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
