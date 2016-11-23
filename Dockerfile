FROM gentoo/stage3-amd64
MAINTAINER Jeremy Lucas <jeremyalucas@gmail.com>

ARG ROOT_PASS
ARG USERNAME
ARG PASSWORD
ENV ROOT_PASS $ROOT_PASS
ENV USERNAME $USERNAME
ENV PASSWORD $PASSWORD

ADD fs /
WORKDIR /

# Run various image bootstrapping tasks
RUN /tmp/bootstrap/portage.sh
RUN /tmp/bootstrap/users.sh
RUN /tmp/bootstrap/deps.sh
RUN rm -rf /tmp/bootstrap

ENTRYPOINT ["/bin/sh", "-c", "login"]
