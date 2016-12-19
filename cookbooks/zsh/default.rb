git "~/.oh-my-zsh/" do
  repository 'git://github.com/robbyrussell/oh-my-zsh.git'
end

execute 'sh dotfiles/dotfiles_link.sh'
execute 'sudo chsh -s /bin/zsh vagrant'
