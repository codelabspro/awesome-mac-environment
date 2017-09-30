alias startapache='sudo launchctl load -w /System/Library/LaunchDaemons/org.apache.httpd.plist'
alias gitlog='git log --oneline --abbrev-commit --all --graph --decorate --color'
export TERM=xterm-color

export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'

export CLICOLOR=1

export LSCOLORS=ExFxCxDxBxegedabagacad

# Setup some colors to use later in interactive shell or scripts
alias colorslist="set | egrep 'COLOR_\w*'"  # lists all the colors



export SV_USER='juser' # Change this to your username that you normally use on Subversion (only if it is different from your logged in name)
export SVN_EDITOR='${EDITOR}'

alias svnshowcommands="echo -e '${COLOR_BROWN}Available commands:
   ${COLOR_GREEN}svn
   ${COLOR_GREEN}svn${COLOR_NC}help
   ${COLOR_GREEN}svn${COLOR_NC}import    ${COLOR_GRAY}Example: import ~/projects/my_local_folder http://svn.foo.com/bar
   ${COLOR_GREEN}svn${COLOR_NC}checkout  ${COLOR_GRAY}Example: svcheckout http://svn.foo.com/bar
   ${COLOR_GREEN}svn${COLOR_NC}status
   ${COLOR_GREEN}svn${COLOR_NC}status${COLOR_GREEN}on${COLOR_NC}server
   ${COLOR_GREEN}svn${COLOR_NC}add       ${COLOR_GRAY}Example: svadd your_file
   ${COLOR_GREEN}svn${COLOR_NC}add${COLOR_GREEN}all${COLOR_NC}    ${COLOR_GRAY}Note: adds all files not in repository [recursively]
   ${COLOR_GREEN}svn${COLOR_NC}delete    ${COLOR_GRAY}Example: svdelete your_file
   ${COLOR_GREEN}svn${COLOR_NC}diff      ${COLOR_GRAY}Example: svdiff your_file
   ${COLOR_GREEN}svn${COLOR_NC}commit    ${COLOR_GRAY}Example: svcommit
   ${COLOR_GREEN}svn${COLOR_NC}update    ${COLOR_GRAY}Example: svupdate
   ${COLOR_GREEN}svn${COLOR_NC}get${COLOR_GREEN}info${COLOR_NC}   ${COLOR_GRAY}Example: svgetinfo your_file
   ${COLOR_GREEN}svn${COLOR_NC}blame     ${COLOR_GRAY}Example: svblame your_file
'"

alias svn='svn --username ${SV_USER}'
alias svnimport='svn import'
alias svncheckout='svn checkout'
alias svnstatus='svn status'/
alias svnupdate='svn update'
alias svnstatusonserver='svn status --show-updates' # Show status here and on the server
alias svncommit='svn commit'
alias svnadd='svn add'
alias svnaddall='svn status | grep "^\\?" | awk "{print \\$2}" | xargs svn add'
alias svndelete='svn delete'
alias svnhelp='svn help'
alias svnblame='svn blame'
alias svndiff='svn diff'


# aliases
alias cd..="cd .."
alias l="ls -al"
alias lp="ls -p"
alias h=history

# the "kp" alias ("que pasa"), in honor of tony p.
alias kp="ps auxwww"

alias ss="/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine -background &"

# source ~/.rvm/scripts/rvm

# ant/java stuff
export HOSTNAME=alsMac
export ANT_HOST_NAME=alsMac
export ANT_HOME=~/apachetools/apache-ant-1.9.4
export ANDROID_NDK_ROOT=~/android-installer/adt-bundle-mac-x86_64-20130219/ndk
export COCOS2DX_ROOT=~/cocos2dx-home/cocos2d-x-3.6
export NDK_ROOT=~/android-installer/adt-bundle-mac-x86_64-20130219/ndk
export ANDROID_SDK_ROOT=~/android-installer/adt-bundle-mac-x86_64-20130219/sdk
export PATH=$PATH:$ANDROID_NDK_ROOT
# export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.5.0
# export JAVA_HOME=/Library/Java/Home
export TOMCAT_HOME=~/apache-tomcat-6.0.37
# export TOMCAT_HOME=~/apache-tomcat/apache-tomcat-7.0.50
# jruby
export JRUBY_HOME=/Users/al/Apps/jruby-0.9.2
# PATH=${PATH}:/Users/al/Apps/jruby-0.9.2/bin

# maven 2.0.8 config
export M2_HOME=~/apache-maven-3.2.3
PATH=$PATH:$M2_HOME/bin

# gradle config
export GRADLE_HOME=~/gradle-2.0
export PATH=$PATH:$GRADLE_HOME/bin

export APPENGINE_HOME=~/appengine/appengine-java-sdk-1.9.31
export GO_APPENGINE_HOME=~/go_appengine
export ACTIVATOR_HOME=~/activator/activator-dist-1.3.7

# general path munging
PATH=${PATH}:~/bin
PATH=${PATH}:/usr/local/bin
export PATH=${PATH}:ANT_HOME/bin
export PATH=${PATH}:TOMCAT_HOME/bin
# postgres
export PATH=${PATH}:/usr/local/pgsql/bin
export PGDATA=/usr/local/pgsql/data
#ruby on rails
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
#appengine
export PATH=${PATH}:APPENGINE_HOME/bin
export PATH=${PATH}:GO_APPENGINE_HOME
export PATH=${PATH}:ACTIVATOR_HOME
# configure my multi-line prompt
PS1='
$PWD
==> '
function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOR="\[\033[0m\]"

# PS1="$GREEN$YELLOW\$(parse_git_branch)$NO_COLOR
# $PWD
# ==> "
export REPO_DIR=~/repos/jamdeo/branches/jamdeo-mtk_hisense_5657-master

#-----#
# X11 #
#-----#
#export DISPLAY=:0.0
#PATH=${PATH}:/Users/darunabh/android-installer/adt-bundle-mac-x86_64-20130219/sdk/tools
#PATH=${PATH}:/Users/darunabh/android-installer/adt-bundle-mac-x86_64-20130219/sdk/platform-tools
PATH=${PATH}:~/android-sdks/tools
PATH=${PATH}:~/android-sdks/platform-tools
export PATH=${PATH}:$HOME/gsutil
# sudo kextunload /System/Library/Extensions/EasyTetherUSBEthernet.kext

alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'

# grails
# export GRAILS_HOME=~/grails-2.4.4
export PATH=$PATH:$GRAILS_HOME/bin
export MAVEN_HOME=~/apache-maven-3.1.0

# export JAVA_HOME=$(/usr/libexec/java_home)

export JAVA_HOME=$(/usr/libexec/java_home -v 1.8.0_77 --exec javac -version)

export PATH=$PATH:$JAVA_HOME/bin


PATH=${JAVA_HOME}/bin:${PATH}:/usr/local/mysql/bin:/usr/local/ant-1.6.5/bin
export PATH=$PATH:~/git-tf

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

export NXJ_HOME=~/tools/leJOS_NXJ_0.9.1beta-3
export LEJOS_NXT_JAVA_HOME=/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home
export PATH=$PATH:$NXJ_HOME/bin
export MYSQL_HOME=~/mysql/mysql-5.6.13-osx10.7-x86_64
export PATH=${PATH}:$MYSQL_HOME/bin
export RAR_HOME=~/rar
export PATH=${PATH}:$RAR_HOME

export MONGODB_HOME=~/mongodb/mongodb-osx-x86_64-2.4.8
export PATH=${PATH}:${MONGODB_HOME}/bin

export PATH=$PATH:/Users/coder/playframework/play-2.2.1
export PATH=$PATH:~/.composer/vendor/bin
# export CATALINA_HOME=~/apache-tomcat/apache-tomcat-7.0.50
export CATALINA_HOME=~/apache-tomcat-8.0.12

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

gotopythonframework()
{
    echo "/System/Library/Frameworks/Python.framework/Versions"
}
export NARWHAL_ENGINE=jsc

export PATH="/usr/local/narwhal/bin:$PATH"

export CAPP_BUILD="/Users/das/Capp/Build"

# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# The next line updates PATH for the Google Cloud SDK.
source '/Users/coder/google-cloud-sdk/path.bash.inc'

# The next line enables bash completion for gcloud.
source '/Users/coder/google-cloud-sdk/completion.bash.inc'

gosearchandreplace()
{
    echo "grep -rl string1 ./ | xargs sed -i '' s/string1/string2/g"
}

gofindanddelete()
{
 echo "find ./ -type d -name .git -exec rm -rf {}"
}
whatparanoid()
{
    echo "repo forall -c 'git reset HEAD --hard; git clean -df; git rebase --abort'"
    echo "repo start mtk-$(date +%Y-%m-%d-%H%M) --all"
    echo "repo sync || echo "ERROR: repo exit code: $?""
}
code ()
{
    VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;
}
#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/coder/.gvm/bin/gvm-init.sh" ]] && source "/Users/coder/.gvm/bin/gvm-init.sh"
# source /usr/local/opt/nvm/nvm.sh
source ~/.nvm/nvm.sh

#Postgres
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin
export DATABASE_URL=postgres:///$(whoami)
# alias python=python3

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/coder/.sdkman"
[[ -s "/Users/coder/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/coder/.sdkman/bin/sdkman-init.sh"

export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH

export EC2_HOME=~/ec2/ec2-api-tools-1.7.5.1
export PATH=$PATH:$EC2_HOME/bin


#Below environment is for Cordova
# alias editbash="vi ~/.bash_profile"
alias editbash="vi ~/.bashrc"

# export ANDROID_HOME=~/Library/Android/sdk
export ANDROID_HOME=~/android-installer/adt-bundle-mac-x86_64-20130219/sdk
# export APP_DIR=~/projects/event-manager
export APP_DIR=~/repos/app_dir
# export JAVA_HOME=~/Library/Java/JavaVirtualMachines/jdk1.8.0_51.jdk/Contents/Home/bin/java
export ANDROID_BUILD_DIR=$APP_DIR/platforms/android/build/outputs/apk/

# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

function build() {
  grunt build &&
  cordova build ios &&
  cordova build android
}

function releaseAndroid() {
  cd $APP_DIR &&
  grunt build &&
  cordova build android --release &&
  cd $ANDROID_BUILD_DIR &&
  rm -rf OfficialEvents.apk &&
  jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore OfficialEventKeystore.keystore android-release-unsigned.apk OfficialEvent &&
  jarsigner -verify -verbose -certs android-release-unsigned.apk &&
  $ANDROID_HOME/build-tools/21.1.2/zipalign -v 4 android-release-unsigned.apk OfficialEvents.apk &&
  cd $APP_DIR
}
ulimit -n 2560

#Above environment is for Cordova









