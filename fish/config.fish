alias fishrc="nvim ~/.config/fish/config.fish"
alias covim="nvim  ~/.vimrc"
alias g="git"
alias gcm="git commit -m"
alias gca="git commit --amend --no-edit"
alias gco="git checkout"
alias gpul="git pull origin"
alias gps="git push origin"
alias gpsff="git push origin --force"
alias nbra="git branch --show-current |xargs echo -n | xclip -sel clip"
alias gbra="g branch --show-current | xargs echo -n "
alias cpat="pwd | xclip -sel clip"
alias unfiles="git ls-files -z -o --exclude-standard"
alias clip2c="xclip -sel clip"
export SHELLDER_KEEP_PATH=1
alias ls "ls -p -G"
alias la "ls -A"
alias ll "ls -l"
alias lla "ll -A"
alias C="code . "
command -qv nvim && alias vim nvim
set -gx EDITOR nvim

set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH

# NodeJS
set -gx PATH node_modules/.bin $PATH

# Go
set -g GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH

# NVM
function __check_rvm --on-variable PWD --description 'Do nvm stuff'
  status --is-command-substitution; and return

  if test -f .nvmrc; and test -r .nvmrc;
    nvm use
  else
  end
end

switch (uname)
  case Darwin
    source (dirname (status --current-filename))/config-osx.fish
  case Linux
    source (dirname (status --current-filename))/config-linux.fish
  case '*'
    source (dirname (status --current-filename))/config-windows.fish
end

set LOCAL_CONFIG (dirname (status --current-filename))/config-local.fish
if test -f $LOCAL_CONFIG
  source $LOCAL_CONFIG
end

alias lltr="ll --tree --level=2 -a"

