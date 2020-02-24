export ZSH="/Users/armaizadenwala/.oh-my-zsh"
ZSH_THEME="spaceship"


SPACESHIP_RPROMPT_ORDER=(
  exec_time
  time
)

SPACESHIP_PROMPT_ORDER=(
  user
  dir
  host
  git
  vi_mode
  jobs
  exit_code
  char
)

COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="mm/dd/yyyy"
SPACESHIP_TIME_SHOW=true
SPACESHIP_TIME_SUFFIX=" "
SPACESHIP_GIT_STATUS_SHOW=false
SPACESHIP_PACKAGE_SHOW=false
SPACESHIP_DIR_PREFIX=""
SPACESHIP_GIT_PREFIX="|"
SPACESHIP_GIT_SYMBOL=" "
SPACESHIP_NODE_PREFIX=""
SPACESHIP_EXEC_TIME_PREFIX=""
SPACESHIP_EXEC_TIME_ELAPSED=0
SPACESHIP_NODE_SYMBOL=""
SPACESHIP_RUBY_SYMBOL=""
SPACESHIP_BATTERY_THRESHOLD=50
SPACESHIP_GIT_BRANCH_PREFIX=""
SPACESHIP_TIME_PREFIX=""
SPACESHIP_TIME_COLOR="gray"
SPACESHIP_RUBY_PREFIX=""
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

alias szrc='source ~/.zshrc'
alias zrc='code ~/.zshrc'
alias bp='code ~/.bash_profile'
alias sbp='source ~/.bash_profile'

alias proj="cd ~/code"
alias useMySQL="brew unlink mysql-connector-c && brew link mysql"
alias useMySQLConnectorC="brew unlink mysql && brew link mysql-connector-c"
alias pmpy="python manage.py"
alias be="bundle exec"

alias rnri="npx react-native run-ios"
alias rnra="npx react-native run-android"
alias rnba="npx react-native bundle --platform android --dev false --entry-file index.js --bundle-output android/app/src/main/assets/index.android.bundle --assets-dest android/app/src/main/res/"

alias yri="yarn run ios"
alias yra="yarn run android"
alias yre="yarn run eslint"

alias super-clean='watchman watch-del-all && rm -rf node_modules/ && rm -fr $TMPDIR/react-* && rm -fr $TMPDIR/npm* && rm -fr $TMPDIR/*.json.gzip && yarn cache clean && yarn install && yarn start --reset-cache'
alias super-clean-new='watchman watch-del-all; rm -rf $TMPDIR/react-native-packager-cache-*; rm -rf $TMPDIR/metro-bundler-cache-*; rm -rf node_modules/; npm cache clean; npm install; npm start --reset-cache'
alias clean-yarn='watchman watch-del-all && rm -rf node_modules/ && npm cache clean && yarn cache clean && yarn install && npm i && yarn start --reset-cache'
alias clean-cache='watchman watch-del-all && npm cache clean && yarn cache clean && yarn start --reset-cache'

alias nrbe="npm run build:electron"
alias nre="npm run electron"

alias ys="yarn run start"
alias ns="npm start"
alias rdbm="rake db:migrate"

alias gca="./gradlew clean && ./gradlew assembleRelease"

alias  pg-restart="pg_ctl -D /usr/local/var/postgres stop && brew services stop postgresql && pg_ctl -D /usr/local/var/postgres start && brew services start postgresql"

alias gst="git status"
alias pu="git push origin HEAD -u"
alias gb="git branch"
alias gba="git branch -a"
alias gd="git diff"
alias gr="git reset"
alias ga="git add ."
alias gsk="git stash --keep-index -u"
alias gs="git stash -u"
alias gsp="git stash pop"
alias gp="git push"
alias gl="git log"
alias gpl="git pull"
alias grbc="git rebase --continue"
alias co="git checkout"
alias grb="git rebase"
alias gcm="git commit -m "
alias gm="git merge"

alias rsp="rails s -p"

function adbr() {
  adb reverse tcp:$1 tcp:$1
}

function rd() {
  rake deploy:$1
}

function kPid() {
  kill -9 $1
}
function fPid() {
  lsof -n -i4TCP:$1
}
function bstop() {
  brew services stop $1
}
function bstart() {
  brew services start $1
}

function opp() {
  open http://localhost:$1
}
function op() {
  open https://$1
}

export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH="/usr/local/opt/python@4/libexec/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"
export PATH="~/Library/Python/3.6/bin":$PATH
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
source "/Users/armaizadenwala/.oh-my-zsh/custom/themes/spaceship.zsh-theme"
source /Users/armaizadenwala/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /Users/armaizadenwala/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export PATH="/usr/local/sbin:$PATH"
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
export DISABLE_SPRING=true
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
