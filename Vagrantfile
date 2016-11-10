# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "debian/jessie64"

  # necessary package
  config.vm.provision "shell", privileged: false, inline: <<-SHELL
    sudo apt-get update -y && sudo apt-get upgrade -y
    sudo apt-get install -y make gcc wget zsh curl \
                            libssl-dev \
                            libcurl4-openssl-dev \
                            libexpat1-dev \
                            autoconf \
                            build-essential \
                            gettext \
                            tig \
                            vim
  SHELL

  config.vm.provision :itamae do |i|
    i.sudo = true
    i.recipes = ["./recipe.rb"]
  end

  # config.vm.provision "docker" do |d|
  #   d.build_dir = "./"
  #   d.build_image "./",
  #                 args: "-t 'foo'"
  # end
end

