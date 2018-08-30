ARG os_version=18.04

FROM ubuntu:${os_version}
CMD [ "sleep", "3600" ]
RUN apt-get update && \
  apt-get install -yqq build-essential python3-dev python3-pip && \
  pip3 install --no-cache-dir ansible && \
  rm -Rf /var/lib/apt/lists/*
COPY . /opt/ansible-role-docker
WORKDIR /opt/ansible-role-docker/tests
