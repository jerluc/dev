FROM gentoo/stage3-amd64 
MAINTAINER Jeremy Lucas <jeremyalucas@gmail.com>

ARG ROOT_PASS
ENV ROOT_PASS $ROOT_PASS

# Sets up Base Portage
# Shamelessly stolen from gentoo/portage
ADD http://distfiles.gentoo.org/snapshots/portage-latest.tar.bz2 /
RUN mkdir -p /usr
RUN bzcat /portage-latest.tar.bz2 | tar -xf - -C /usr
RUN mkdir -p /usr/portage/distfiles /usr/portage/metadata /usr/portage/packages

# Run various image bootstrapping tasks
ADD bootstrap /tmp/bootstrap
ADD fs/etc/portage /etc/portage
RUN /tmp/bootstrap/bootstrap.sh
#RUN rm -rf /tmp/bootstrap

CMD /bin/bash
