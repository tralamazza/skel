
    ############# DEPRECATED ################


# Installation

home folder

    cd ~

clone trick (thanks corecode)

    git clone -n git@github.com:tralamazza/skel.git
    mv skel/.git .
    rm -rf skel
    git checkout HEAD

submodules

    git submodule init
    git submodule update

submodules (update)

    git submodule update
    git submodule foreach 'git checkout master'
    git submodule foreach 'git pull'
    git submodule update

load `.exports`

    echo '. "$HOME/.exports"' >> .profile

load `.git_bashrc`

    echo '. "$HOME/.git_bashrc"' >> .bashrc
