#!/bin/bash

xhost local:root > /dev/null

docker run -ti --rm \
       -e DISPLAY=$DISPLAY \
       -v /tmp/.X11-unix:/tmp/.X11-unix \
       -v /usr/share/fonts:/usr/share/fonts:ro \
       -v /usr/share/icons:/usr/share/icons:ro \
       -v /usr/share/themes:/usr/share/themes:ro \
       -v $HOME/.config/qt5ct/:/root/.config/qt5ct/:ro \
       -v $HOME/.octaverc:/root/.octaverc:ro \
       -v $HOME/.config/octave/:/root/.config/octave/ \
       -v $HOME/IFSC/Code/:$HOME/IFSC/Code/ \
       octave
