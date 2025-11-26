# Load exports
[[ -f ~/.zshrc.exports ]] && source ~/.zshrc.exports

# Load personalizations
[[ -f ~/.zshrc.default ]] && source ~/.zshrc.default

# Load Other User personalizations
[ -f ~/.zshrc.user ] && source ~/.zshrc.user

[ -f ~/.zshrc.alias ] && source ~/.zshrc.alias

# Ensure tmux accepts UTF8
alias tmux="tmux -u"
# Load Other User personalizations
[ -f ~/.zshrc.user ] && source ~/.zshrc.user

# SSH alias with s
alias s=ssh

# Use vim-gtk3 as EDITOR
export EDITOR=vim

# Ctrl+U works like bash
bindkey "^u" backward-kill-line

# Alias for common extensions
alias -s {yaml,yml,json,md}=$EDITOR

# Fix GPG AGENT
export GPG_TTY=$TTY

source ~/.antigen.zsh/antigen.zsh

antigen use ohmyzsh/ohmyzsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
plugins=(aliases git git-extras pip command-not-found)

antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme romkatv/powerlevel10k

# Antigen bundles
[[ -f ~/.zshrc.default.antigen.bundles ]] && \
  source ~/.zshrc.default.antigen.bundles

# User bundles
[[ -f ~/.zshrc.user.antigen.bundles ]] && \
  source ~/.zshrc.user.antigen.bundles

# Tell Antigen that you're done.
antigen apply

# Do not share hsitory between sessions
unsetopt share_history

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Fuzzy find
[[ -f ~/.fzf.zsh ]] && source ~/.fzf.zsh

# Load custom autocmplete
fpath=($HOME/.zsh/completion $fpath)


[[ -f ~/.zshrc.default.updates ]] && source ~/.zshrc.default.updates

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
