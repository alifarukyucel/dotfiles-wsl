sudo apt update -y
sudo apt upgrade -y

sudo apt install -y zsh curl git zip unzip

git clone https://github.com/alifarukyucel/dotfiles-wsl.git ~/.dotfiles

GIT_CONFIG_TXT="$HOME/.dotfiles/git_config.txt"
GIT_CONFIG="$HOME/.gitconfig"

email=$(grep 'email' "$GIT_CONFIG_TXT" | awk -F " = " '{print $2}')
name=$(grep 'name' "$GIT_CONFIG_TXT" | awk -F " = " '{print $2}')

git config --file "$GIT_CONFIG" user.email "$email"
git config --file "$GIT_CONFIG" user.name "$name"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install NerdFont Terminus
curl -Lo "Terminus_NerdFont.zip" https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/Terminus.zip

mkdir -p ~/.fonts

ln -s ~/.dotfiles/.bashrc ~/.bashrc
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.fonts ~/.fonts

unzip Terminus_NerdFont.zip -d ~/.fonts
fc-cache -fv
