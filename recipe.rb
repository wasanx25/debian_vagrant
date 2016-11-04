# prepare latest git
execute 'wget https://www.kernel.org/pub/software/scm/git/git-2.10.2.tar.gz'
execute 'tar -zxf git-2.10.2.tar.gz'

# install latest git
['make configure', './configure --prefix=/usr', 'make', 'make install'].each do |cmd|
  execute cmd do 
    cwd 'git-2.10.2'
  end
end
