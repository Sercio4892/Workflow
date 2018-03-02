#! /bin/bash

pkgs=(
  'gcc'
  'python3' 
  'vim'
  'tmux'
  'perl'
  'git'
  )

if [ -d /etc/pacman.d ]; then
  echo "Installing packages (Arch-based)"
  for i in "${pkgs[@]}"
  do
    sudo pacman -S $i
  done
elif [ -d /etc/apt ]; then
  echo "Installing packages (Debian-based)"
  for i in "${pkgs[@]}"
  do
    sudo apt-get install $i
  done
fi

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

cd $HOME
git clone https://github.com/Sercio4892/Workflow.git  $HOME
cp /Workflow/.vimrc $HOME
cp /Workflow/.tmux.conf $HOME




