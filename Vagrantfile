# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "debian/jessie64"
  # config.push.define "atlas" do |push|
  #   push.app = "YOUR_ATLAS_USERNAME/YOUR_APPLICATION_NAME"
  # end

  config.vm.provision "shell", inline: <<-SHELL
    apt-get update
    apt-get install -y git zsh
    git clone https://github.com/wataru0225/dotfiles.git ~
    mkdir -p ~/.vim/bundle
    git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
  SHELL
end
