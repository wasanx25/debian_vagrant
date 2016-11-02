# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "debian/jessie64"
  # config.push.define "atlas" do |push|
  #   push.app = "YOUR_ATLAS_USERNAME/YOUR_APPLICATION_NAME"
  # end

  # config.vm.provision "shell", privileged: false, inline: <<-SHELL
  #   sudo apt-get update
  #   sudo apt-get install -y git zsh
  #   git clone https://github.com/wataru0225/dotfiles.git $HOME/dotfiles/
  #   mkdir -p $HOME/.vim/bundle
  #   git clone git://github.com/Shougo/neobundle.vim $HOME/.vim/bundle/
  #   git clone git://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh/
  #   # cp $HOME/.oh-my-zsh/templates/zshrc.zsh-template $HOME/.zshrc
  #   # sudo chsh -s /bin/zsh vagrant
  # SHELL
  config.vm.provision "docker" do |d|
    d.pull_images "rails"
  end
end

