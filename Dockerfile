FROM docku/base
MAINTAINER Jon Chen <docku@burrito.sh>

EXPOSE 113

USER root
RUN pacman -Syu --noconfirm --needed weechat

VOLUME ["/home/jchen/.weechat"]

ADD oidentd_run /service/oidentd/run
