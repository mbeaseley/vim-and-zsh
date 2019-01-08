# vim-and-zsh
Personal vim and oh my zsh setup

## Mac Setup
Vim setup:
1. Install latest version, use homebrew: 
   brew install vim

2. To download The Ultimate vimrc, need to install the git client. If needed to install, use home brew: 
   ```bash
   brew install git
   ```

3. Download the vimrc files: 
   ```bash
   git clone https://github.com/amix/vimrc.git ~/.vim_runtime
   ```

4. To install complete version: 
   ```bash
   sh ~/.vim_runtime/install_awesome_vimrc.sh
   ```
   
5. To install Maximum Awesome (collection of vim configuration and plugins):
   ```bash
   git clone https://github.com/square/maximum-awesome.git
   cd maximum-awesome
   rake
   ```
   
   For note: "rake" also updates and "rake uninstall" uninstalls
   
Oh-my-zsh setup:
1. install latest version: 
   ```bash
   sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
   ```

2. To change theme, vim into ~/.zshrc: 
   update this line from ZSH_THEME="robbyrussell" to ZSH_THEME="agnoster"
   
   For note: more information here - https://github.com/robbyrussell/oh-my-zsh

## Windows 10 Setup 

1. Go to Settings -> Update & Security -> For developers and enable developer mode.

2. Go to Settings -> Apps & Features -> Programs and Features -> Turn Windows features on or off (Its on the left hand side) and enable Windows Subsystem for        Linux.

3. Install Hyper: https://hyper.is/

4. Open .hyper.js (normally in the root of your directory) and change the shell line to contain:
   ```bash
   shell: 'C:\\Windows\\System32\\bash.exe',.
   ```
   Feel free to add some plugin and change your theme; have a look at https://hyper.is/ for more. 


5. Run these commands to get the basic tooling for modern web development. Be sure to copy and paste them, one line at a time:
   ```bash
   curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
   curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
   echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
   sudo apt-get update && sudo apt-get install build-essential gcc g++ make nginx mysql-server ruby ruby-bundler nodejs git yarn ruby-dev composer vagrant
   ```
   This would of installed the following: 
   * Ubuntu’s build toolchain, so you can build some tools from source if needed, along with a bunch of other handy stuff
   * Added nodejs repository to apt-get
   * nginx web server
   * mysql database
   * Ruby (I use this for Jekyll and a few other projects)
   * Ruby Bundler for Ruby packages as above
   * Ruby dev for building native extensions
   * Node + npm for… well, everything
   * Git for versioning/cloning repositiories
   * Zsh for a better shell setup
   * Yarn for futuristic package management

6. For something extra, install Gulp:
   ```bash
   sudo npm install -g gulp gulp-cli
   ```

7. Next switch to zsh by running this command: 
   ```bash
   chsh -s /usr/bin/zsh
   ```

   If this doesn't work, its probs do to zsh not being installed during the general toolchain installment. 
   ```bash
   sudo apt install zsh
   zsh --version
   chsh -s $(which zsh)
   ```
   Log out and login back again to use your new default shell.

8. If problems with git happen, its probs due to installation as well. Go to the following link and install: 
   https://git-scm.com/downloads
   

9. If you want to use the default bash app, open bash, copy the link and install ubuntu. This will start working for you after reload. 


For note: more information use the following instruction: 
* Hyper - https://hyper.is/
* Zsh - https://github.com/robbyrussell/oh-my-zsh
* Installation Article - https://char.gd/blog/2017/how-to-set-up-the-perfect-modern-dev-environment-on-windows
