ARG os_version=18.04

FROM ubuntu:${os_version}
RUN apt-get update && \
  apt-get install -yqq python3-pip && \
  pip3 install --no-cache-dir ansible && \
  rm -Rf /var/lib/apt/lists/*
ENTRYPOINT [ "ansible-playbook", "test.yml", "-i", "inventory.cfg", "-vvv" ]
COPY . /opt/ansible-role-docker
WORKDIR /opt/ansible-role-docker/tests
