# awesome-mac-environment 

These are the steps for having an awesome mac environment setup for developers (agnostic of language, framework, platform preferences)

### 1) Chrome

Install Chrome

### 2) Apple Developer Tools 

Install Apple Developer Tools from here :
https://developer.apple.com/downloads/

### 3) Speed up Mouse Tracking on Mac OS X using instructions here :

http://www.tylernichols.com/apple/speed-up-mouse-tracking-on-mac-os-x


### 4) Subl shortcut 

Install sublime from here :

https://www.sublimetext.com/3

Add subl shortcut using the instructions here :

http://olivierlacan.com/posts/launch-sublime-text-3-from-the-command-line/


### 5) Vintageous

Install Vintageous for vi mode in sublime :

https://github.com/guillermooo/Vintageous#vintageous


### 6) ST3 PackageControl 

Install ST3 package control using instructions here :

https://packagecontrol.io/installation

https://packagecontrol.io/packages/Seti_UI

Also checkout instructions here for more info :

https://scotch.io/bar-talk/the-complete-visual-guide-to-sublime-text-3-getting-started-and-keyboard-shortcuts

### 7) Seti_UI

Install Seti_UI using package control :

https://packagecontrol.io/packages/Seti_UI

Cmd-Shift-P for invoking package control

### 8) Activate Seti_UI 

Activate the Seti_UI theme by modifying the user preferences file with the following entry :

{
    "theme": "Seti.sublime-theme"
}

as described in the setup instructions here :

https://packagecontrol.io/packages/Seti_UI

### 9) Twighlight theme

Download and install Twighlight theme :

https://github.com/biasedbit/xcode-themes

### 10) Alcatraz 

Install Alcatraz using steps here :

http://alcatraz.io/

### 11) XVim

Install Xvim using steps here :

https://github.com/XVimProject/XVim

To make XVim, first ensure that the path to command line tools is correct as described here :

https://github.com/XVimProject/XVim/issues/920 

$ sudo xcode-select -s ~/Developer/Xcode/Xcode_7_3/Xcode_7_3.app/Contents/Developer

$ xcode-select -p

/Users/das/Developer/Xcode/Xcode_7_3/Xcode_7_3.app/Contents/Developer

### 12) xvimrc 

Copy xvimrc to ~/.xvimrc and restart Xcode


### 13) Install cocoapods

Install cocoapods as follows :

$ sudo gem install cocoapods

### 14) Disable ApplePressAndHold 

Disable ApplePressAndHold for ST3 as described here :

https://gist.github.com/kconragan/2510186

defaults write -g ApplePressAndHoldEnabled -bool false


### 15) Install Homebrew as described here :

http://brew.sh/

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

### 16) Install nvm

https://github.com/creationix/nvm

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash

Add the following line in ~/.bashrc : 

source ~/.nvm/nvm.sh

or 

. ~/.nvm/nvm.sh

### 17) Install node

nvm install v6.0.0

### 18) Install Cordova toolchain as described here :

http://cordova.apache.org/

$ npm install -g yeoman bower grunt-cli gulp cordova

$ sudo gem install compass

$ brew install graphicsmagick

#### Cordova [docs](https://cordova.apache.org/) `npm install cordova -g`

#### Android SDK: [Download](http://developer.android.com/sdk/installing/index.html)

#### Xcode command line tools: [Download](https://developer.apple.com/xcode/download/) or `xcode-select --install`

#### JAVA SDK (latest): [Download](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html)


### 19) Install legacy Java from here 

https://support.apple.com/kb/DL1572?locale=en_US


### 20) Install Sublime snippets for ST3 at this location :

~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/(star).sublime-snippet

### 21) Install Atom editor

https://atom.io/

### 22) Install atom snippets at this location 

~/.atom/snippets.cson

### 23) Install atom packages as shown in screenshots/screenshot_1.png

![alt text](https://github.com/arunabhdas/mac-environment-setup/blob/master/screenshots/screenshot_1.png "Screenshot 1")

### 24) Install SmoothMouse

http://smoothmouse.com/


### 25) Install Android Studio

https://developer.android.com/studio/install.html


### 26) Install python3
Download and install python3 from here :

https://www.python.org/downloads/

as follows

wget https://www.python.org/ftp/python/3.4.3/Python-3.4.3.tgz

Untar as follows 

tar xvzf Python-3.4.3.tgz

cd to that folder

cd Python-3.4.3

Install the new python as follows

./configure --prefix=$HOME/.local

make

make install

Add to PATH in .bash_profile or .bashrc 

# Python 3 
export PATH="$HOME/.local/bin:$PATH"

source ~/.bash_profile 

or

source ~/.bashrc

Check version as follows

python3 -V

Create Virtual Python env as follows 

python3 -m pip install virtualenv

or

python3 -m pip install -user virtualenv

mkdir ~/venv

virtualenv ~/venv

source ~/venv/bin/activate

Check python version as follows
python -V
Python 3.4.3

Exit python env as follows

deactivate


### 28) Install Java SE 6 Runtime from here :

https://support.apple.com/kb/DL1572?locale=en_US

### 29) Select the correct version of xcode tools as follows 

First check your current version of Xcode tools as follows :

==> xcode-select -p
/Users/das/Developer/Xcode/Xcode_7_3/Xcode_7_3.app/Contents/Developer

xcode-select --install

==> sudo xcode-select --switch /Users/coder/Developer/Xcode/Xcode_8_2_1/Xcode_8_2_1.app/Contents/Developer

==> xcode-select -p
/Users/coder/Developer/Xcode/Xcode_8_2_1/Xcode_8_2_1.app/Contents/Develope

### 30) Setup for Xvim for Xcode8 as documented here :

https://github.com/XVimProject/XVim/blob/master/INSTALL_Xcode8.md

and

http://zmoson.com/turn-xcode-into-vim-like-editor/

### 31) Build Xvim as documented here :

https://github.com/XVimProject/XVim


### 32) Install composer as follows :

curl -sS https://getcomposer.org/installer | php

sudo mv composer.phar /usr/local/bin

Add the following alias to .bashrc

alias composer="php /usr/local/bin/composer"

Add to path by adding the following to .bashrc / .bash_profile

export PATH=$PATH:$HOME/.composer/vendor/bin

### 33) Install the Laravel installer using Composer

composer global require "laravel/installer"

### 34) Add $HOME/.composer/vendor/bin to your $PATH


### 35) Install imagemagick

brew install imagemagick

### 36) Install gpg

brew install gpg

### 37) gpg2 --keyserver

gpg2 --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3


### 38)  Install rvm

curl -L https://get.rvm.io | bash -s stable --autolibs=enabled --ruby

### 39) Check Ruby version

==> rvm list known
MRI Rubies
[ruby-]1.8.6[-p420]
[ruby-]1.8.7[-head] # security released on head
[ruby-]1.9.1[-p431]
[ruby-]1.9.2[-p330]
[ruby-]1.9.3[-p551]
[ruby-]2.0.0[-p648]
[ruby-]2.1[.10]
[ruby-]2.2[.6]
[ruby-]2.3[.3]
[ruby-]2.4[.0]
ruby-head

for forks use: rvm install ruby-head-<name> --url https://github.com/github/ruby.git --branch 2.2

JRuby
jruby-1.6[.8]
jruby-1.7[.26]
jruby[-9.1.7.0]
jruby-head

Rubinius
rbx-1[.4.3]
rbx-2.3[.0]
rbx-2.4[.1]
rbx-2[.5.8]
rbx[-3.71]
rbx-head

Opal
opal

Minimalistic ruby implementation - ISO 30170:2012
mruby-1.0.0
mruby-1.1.0
mruby-1[.2.0]
mruby[-head]

Ruby Enterprise Edition
ree-1.8.6
ree[-1.8.7][-2012.02]

Topaz
topaz

MagLev
maglev[-head]
maglev-1.0.0

Mac OS X Snow Leopard Or Newer
macruby-0.10
macruby-0.11
macruby[-0.12]
macruby-nightly
macruby-head

IronRuby
ironruby[-1.1.3]
ironruby-head


==> rvm list

rvm rubies

=* ruby-2.4.0 [ x86_64 ]

=> - current
=* - current && default
* - default


### 40) Install latest version of Ruby as described here :

https://coderwall.com/p/4imsra/upgrading-ruby-to-2-1-0-and-above-in-mavericks


ruby -v
ruby 2.0.0p247 (2013-06-27 revision 41674) [universal.x86_64-darwin13]

Run the following to install RVM and the latest stable version of Ruby:
\curl -L https://get.rvm.io | bash -s stable --ruby

Install the Ruby interpreter:

rvm install 2.1.0 --autolibs=enable

After that's finished installing, run:

source /Users/{your_user_name}/.rvm/scripts/rvm
Run:

ruby -v
ruby 2.1.0p76 (2014-02-24 revision 45161) [x86_64-darwin13.0]


### 41) Install Bundler

sudo gem install bundler

### 42) Install nokogiri

sudo gem install nokogiri

### 43) Create Gemfile for Jekyll

gem 'github-pages'
source 'https://rubygems.org'

### 44) Run bundle install : Run this command in the directory that contains the above Gemfil

bundle install

### 45) Install jekyll as described here :

https://www.taniarascia.com/make-a-static-website-with-jekyll/

jekyll new myjekyll


### 46) Brew install blade

https://github.com/jondot/blade

 $ brew tap jondot/tap
 $ brew install blade

### 47) IntelliJIdeaC

Install IntelliJIdeaC from 

https://www.jetbrains.com/idea/?fromMenu#chooseYourEdition

Import settings from intellij-idea-community-settings folder


### 48) Install Google Cloud SDK 
Install Cloud Tools version (156.0.0 at the time of authoring) from 

http://cloud.google.com/sdk/docs/nstall the latest Cloud Tools version (156.0.0)


### 49) Install postgres
Install postgres from 
http://postgresapp.com/

Configure your $PATH to use the included command line tools (optional):
sudo mkdir -p /etc/paths.d &&
echo /Applications/Postgres.app/Contents/Versions/latest/bin | sudo tee /etc/paths.d/postgresapp

### 50) Install pgAdmin
Install pgAdmin from 
https://www.pgadmin.org/download/


### 51) Install Heroku CLI 

Install Heroku CLI from steps
https://devcenter.heroku.com/articles/heroku-cli

### 52) Install latest Java

Check Java version by using 

==> /usr/libexec/java_home
/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Hom

Install latest Java by downloading from
http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html

Check that latest Java was installed by using 

==> /usr/libexec/java_home
/Library/Java/JavaVirtualMachines/jdk1.8.0_131.jdk/Contents/Home

### 53) Install sdkman and grails
Install sdkman and grails as described here 
http://guides.grails.org/creating-your-first-grails-app/guide/index.html

$ curl -s "https://get.sdkman.io" | bash

$ sdk install grails 3.2.9

Check that latest grails was installed using 

==> grails -version
| Grails Version: 3.2.9
| Groovy Version: 2.4.10
| JVM Version: 1.8.0_131

### 54) Install pip 
Install pip as follows
sudo easy_install pip


### 55) Install awswebcli
Install EB CLI as follows

http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/eb-cli3-install-osx.html

brew update

brew install awsebcli


### 56) Install mysql

Download and install mysql server from 

https://dev.mysql.com/downloads/mysql/

==> brew unlink mysql-connector-c
Unlinking /usr/local/Cellar/mysql-connector-c/6.1.10... 48 symlinks removed


==> brew install mysql

### 57) Install sublimetext3 snippets 

Install sublimetext3 snippets as described here :

https://github.com/arunabhdas/snippets

58) Set indentation on sublimetext3 to 4 spaces 

Set indentation to 4 spaces as described here :

https://stackoverflow.com/questions/22529265/sublime-text-3-convert-spaces-to-tabs


### 58) Add super+sift+f to key-bindings

Preferences -> Key Bindings
[
    { "keys": ["super+shift+f"], "command": "reindent"}
    
]

### 59) Install ruby as follows

From https://gorails.com/setup/osx/10.12-sierra

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install rbenv ruby-build

Add rbenv to bash so that it loads every time you open a terminal
echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile
source ~/.bash_profile

Install Ruby
rbenv install 2.4.0
rbenv global 2.4.0
ruby -v


### 60) Install rails as follows

sudo gem install rails
Now, you can verify the gem installation by using:

rails --version
You should see something similar to the following:

Rails 5.x.x

sudo gem install bundle

### 61) Install go

brew install go

## 62) Install Yarn

### 63) Install Charles proxy (Optional)

### 64) Install Postman

### 65) Install Paws (Optional : Not needed if Postman is preferred)

### 66) Install Stitch

### 67) Install Firefox

### 68) Install Mono, Fiddler
https://www.telerik.com/download/fiddler-wizard

### 69) Install pushpin 
http://pushpin.org/
