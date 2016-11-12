# if you want to do that had some latest git installed,
# you should execute the command below.
# git clone git://git.kernel.org/pub/scm/git/git.git

# prepare latest git
execute 'wget https://www.kernel.org/pub/software/scm/git/git-2.10.2.tar.gz'
execute 'tar -zxf git-2.10.2.tar.gz'

# install latest git
['make configure', './configure --prefix=/usr', 'make', 'make install'].each do |cmd|
  execute cmd do 
    cwd 'git-2.10.2'
  end
end

execute 'git config --global user.name wataru0225'
execute 'git config --global user.email wataru.kikuchi0225@gmail.com'

git "~/dotfiles/" do
  repository 'git://github.com/wataru0225/dotfiles.git'
end

execute 'mkdir -p ~/.vim/bundle'
git "~/.vim/bundle/neobundle.vim" do
  repository 'git://github.com/Shougo/neobundle.vim'
end

git "~/.oh-my-zsh/" do
  repository 'git://github.com/robbyrussell/oh-my-zsh.git'
end

execute 'sh dotfiles/dotfiles_link.sh'
execute 'sudo chsh -s /bin/zsh vagrant'

# if you want to do that had some latest docker installed,
# you should execute the command below.
# wget -N https://get.docker.com/ | sh

# install latest docker
execute 'wget -qO- https://get.docker.com/ | sh'
execute 'sudo usermod -aG docker $USER'

# install latest docker-compose
# execute 'sudo -i'
# execute 'curl -L "https://github.com/docker/compose/releases/download/1.8.1/docker-compose-$(uname -s)-$(uname -m)" > /usr/local/bin/docker-compose'
# execute 'chmod +x /usr/local/bin/docker-compose'
# execute 'exit'

# add directory for work
execute 'sudo mkdir -p /var/www/'
execute 'sudo chown vagrant:vagrant /var/www/'
