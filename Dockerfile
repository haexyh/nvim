From ubuntu

RUN apt-get update -y && apt-get install neovim tmux git curl -y
WORKDIR /root/.config/nvim/
COPY init.vim init.vim
RUN curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
RUN nvim +PlugInstall +qall
WORKDIR /root
COPY .bashrc .bashrc


