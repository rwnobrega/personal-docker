#!/bin/bash

xhost local:root > /dev/null
docker run -ti --rm \
       -e DISPLAY=$DISPLAY \
       -e GTK2_RC_FILES=/root/.themes/Zukitwo/gtk-2.0/gtkrc \
       -v /tmp/.X11-unix:/tmp/.X11-unix \
       -v $HOME/.config/qt5ct/:/root/.config/qt5ct/:ro \
       -v /usr/share/fonts:/usr/share/fonts:ro \
       -v /usr/share/icons:/usr/share/icons:ro \
       -v $HOME/.themes/Zukitwo/:/root/.themes/Zukitwo/:ro \
       -v $HOME/.config/octave/:/root/.config/octave/ \
       -v $HOME/.octaverc:/root/.octaverc:ro \
       -v $HOME/IFSC/Code/:$HOME/IFSC/Code/ \
       octave
