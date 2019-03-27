echo 'Beginning installation of dev packages!'

#!/bin/bash
# Check to see if Homebrew is installed, and install it if it is not
if test ! $(which brew); then 
  echo "Installing Homebrew Now!"
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";
else 
  echo "Brew Already Installed";
fi
xcode-select -p
if type xcode-select >&- && xpath=$( xcode-select --print-path ) && test -d "${xpath}" && test -x "${xpath}"; then
  echo "Xcode Already Installed!"
else
  echo "Installing Xcode!"
  xcode-select --install
fi

xcode-select --version

# Update homebrew recipes
echo "Checking if brew is up-to-date";
brew update;

# Check for broken dependencies and/or outdated packages
brew doctor
brew cleanup --prune-prefix

# Install core utilities
PACKAGES=(
  coreutils
  binutils
  diffutils
  ed
  findutils
  gawk
  gnu-indent
  gnu-sed
  gnu-tar
  gnu-which
  gnutls
  grep
  gzip
  screen
  watch
  wdiff
  gettext
  wget
 )

for packages in ${PACKAGES[*]}
do
  brew install $packages
done

# Link gettext due to it being a special case
brew link --force gettext

# Install additional tools
brew install gettext
brew link --force gettext

# Install GNU find, locate, updatedb, and xargs, g-prefixed
brew install findutils

# Install up-to-date bash
brew install bash

# Installing Additional Tools
PACKAGES=(
    ack
    autoconf
    automake
    boot2docker
    ffmpeg
    gettext
    gifsicle
    git
    graphviz
    hub
    imagemagick
    jq
    libjpeg
    libmemcached
    lynx
    markdown
    memcached
    mercurial
    npm
    pkg-config
    postgresql
    python
    python3
    pypy
    rabbitmq
    rename
    ssh-copy-id
    terminal-notifier
    the_silver_searcher
    tmux
    tree
    wget
)

echo "Installing packages..."
brew install ${PACKAGES[@]}

echo "Cleaning up..."
brew cleanup

echo "Installing cask..."
brew install caskroom/cask/brew-cask

CASKS=(
  dropbox
  firefox
  google-chrome
  google-drive
  iterm2
  macvim
  virtualbox
  vlc
)

echo "Installing cask apps.."
brew cask install ${CASKS[@]}

echo "Installing Python packages..."
PYTHON_PACKAGES=(
    ipython
    virtualenv
    virtualenvwrapper
)
sudo pip install ${PYTHON_PACKAGES[@]}

echo "Installing Ruby gems..."
RUBY_GEMS=(
    bundler
    filewatcher
    cocoapods
)
sudo gem install ${RUBY_GEMS[@]}

echo "Checking if NPM needs updating..."
npm install -g npm

echo "Installing global npm packages..."
npm install marked -g

echo 'export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"' >> ~/.bash_profile
echo 'export PATH="/usr/local/opt/make/libexec/gnubin:$PATH"' >> ~/.bash_profile
echo 'export PATH="/usr/local/opt/file-formula/bin:$PATH"' >> ~/.bash_profile
echo 'export PATH="/usr/local/opt/perl@5.18/bin:$PATH"' >> ~/.bash_profile
echo 'export PATH="/usr/local/opt/ncurses/bin:$PATH"' >> ~/.bash_profile
echo 'export PATH="/usr/local/opt/apr/bin:$PATH"' >> ~/.bash_profile
echo 'export PATH="/usr/local/opt/apr-util/bin:$PATH"' >> ~/.bash_profile
echo 'export PATH="/usr/local/opt/unzip/bin:$PATH"' >> ~/.bash_profile
echo 'export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"' >> ~/.bash_profile
echo 'export MANPATH="/usr/local/opt/make/libexec/gnuman:$MANPATH"' >> ~/.bash_profile

echo "Creating folder structure..."
[[ ! -d workspace ]] && mkdir ~/Documents/workspace

echo "Dev tools and packages installation complete!"
