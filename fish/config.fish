alias fishrc="nvim ~/.config/fish/config.fish"
alias covim="nvim  ~/.vimrc"
alias back="cd /opt_fast/Orbinet/backend"
#alias front="cd /opt/sunwise/sunwise-frontend"
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
command -qv nvim && alias vim nvim
alias svim="nvim  /home/lmex89/.SpaceVim.d/init.toml"
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
function clip_current_branch
  set sun "https://bitbucket.org/sunwise3/sunwise-backend/branch/"
  alias set_current_branch="git branch --show-current | xargs echo -n "
  set new_branch $sun(set_current_branch)
  echo $new_branch | DISPLAY=:0 xclip -sel clip
end

function print_current_branch
  set sun  "https://bitbucket.org/sunwise3/sunwise-backend/branch/"
  alias set_current_branch="git branch --show-current | xargs echo -n"
  set new_branc $sun(set_current_branch)
  echo $new_branc

end
source ~/.asdf/asdf.fish
dropbox autostart y


