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

load `.exports`

    echo '. "$HOME/.exports"' >> .profile
