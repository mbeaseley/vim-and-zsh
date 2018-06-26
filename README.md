# vim-and-zsh
Personal vim and oh my zsh setup

# Mac Setup
Vim setup:
1. Install latest version, use homebrew: 
   brew install vim

2. To download The Ultimate vimrc, need to install the git client. If needed to install, use home brew: 
   brew install git

3. Download the vimrc files: 
   git clone https://github.com/amix/vimrc.git ~/.vim_runtime

4. To install complete version: 
   sh ~/.vim_runtime/install_awesome_vimrc.sh
   
5. To install Maximum Awesome (collection of vim configuration and plugins): 
   git clone https://github.com/square/maximum-awesome.git
   cd maximum-awesome
   rake
   
   For note: "rake" also updates and "rake uninstall" uninstalls
   
Oh-my-zsh setup:
1. install latest version: 
   sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

2. To change theme, vim into ~/.zshrc: 
   update this line from ZSH_THEME="robbyrussell" to ZSH_THEME="agnoster"
   
   For note: more information here - https://github.com/robbyrussell/oh-my-zsh
