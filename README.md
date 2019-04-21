# env_files
My environment files

TMux:
1. Copy the .tmux.conf file to ~/
2. Run git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
3. Start tmux, let it fetch the shit

Powerline for TMux:
1. Go to some dir, run git clone https://github.com/powerline/fonts.git --depth=1
2. cd fonts
3. Run install.sh
4. Restart tmux

Vim:
1. clone vim into this dir
2. run vim_makeconfig.sh
3. run vim_install.sh

Vim env:
1. run fzf_install.sh
2. install YouCompleteMe, following the guide from github. That stuff is difficult man
3. run fd_install.sh

Additional things:
1. run docker-clean_install.sh
