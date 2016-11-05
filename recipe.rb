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

# if you want to do that had some latest docker installed,
# you should execute the command below.
# wget -N https://get.docker.com/ | sh

# install latest docker
execute 'wget -qO- https://get.docker.com/ | sh'
execute 'sudo usermod -aG docker $USER'
