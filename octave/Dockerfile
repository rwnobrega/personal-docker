FROM fedora:25

MAINTAINER Roberto Nobrega <rwnobrega@gmail.com>

RUN dnf -y upgrade && dnf -y install \
    gtk-murrine-engine \
    gtk2 \
    octave-6:4.0.3 \
    octave-communications \
    octave-control \
    octave-parallel \
    octave-signal \
    octave-statistics \
    qt5-qtstyleplugins \
    qt5ct

ENV QT_GRAPHICSSYSTEM native
ENV QT_QPA_PLATFORMTHEME qt5ct

CMD /usr/bin/octave
