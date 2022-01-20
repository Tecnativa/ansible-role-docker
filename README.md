# Docker

[![Build Status](https://travis-ci.org/Tecnativa/ansible-role-docker.svg?branch=master)](https://travis-ci.org/Tecnativa/ansible-role-docker)
[![GitHub license](https://img.shields.io/github/license/Tecnativa/ansible-role-docker.svg)](https://github.com/Tecnativa/ansible-role-docker/blob/master/LICENSE)
[![Ansible Galaxy](https://img.shields.io/badge/ansible--galaxy-tecnativa.docker-blue.svg)][galaxy]

Set up docker servers with all of the docker project software stack.

## Requirements

Only [Ansible on Python 3][ansible-py3] is supported.

Supported operating systems:

- Ubuntu:

  - 16.04
  - 18.04
  - 20.04

## Role Variables

See the [`defaults`][] directory to know all the variables you are allowed to
override. All the non-obvious ones are docummented inline.

## Example Playbook

```yaml
- hosts: docker
  roles:
  - role: tecnativa.docker
    vars:
      docker_app_state: present
      docker_compose_state: present
      docker_engine_state: present
      docker_machine_state: present
      docker_swarm_state: present
```

For a bigger example, go see [our test playbooks][test].

## Support

- [Apache2 License](https://choosealicense.com/licenses/apache-2.0/).

- [:octocat: GH project](https://github.com/Tecnativa/ansible-role-docker).

- [Issue Tracker](https://github.com/Tecnativa/ansible-role-docker/issues).

- [Install from Ansible Galaxy][galaxy].

- Are you a [Doodba][] user? Welcome to the family! 👪🐳

  This project and [Doodba][] are completely independent, but interoperability
  is guaranteed. You can use this role to set up your [Doodba][] hosts.

## Author Information

This project is maintained by:

[![Tecnativa logo](https://www.tecnativa.com/logo.png "Tecnativa")][Tecnativa]

[Tecnativa][] is an IT consulting company specialized in Odoo and provides Odoo
development, installation, maintenance and hosting services.

[ansible-py3]: https://docs.ansible.com/ansible/latest/reference_appendices/python_3_support.html
[`defaults`]: https://github.com/Tecnativa/ansible-role-docker/tree/master/defaults/main
[Doodba]: https://github.com/Tecnativa/doodba
[galaxy]: https://galaxy.ansible.com/yajo/docker
[Tecnativa]: https://www.tecnativa.com
[test]: https://github.com/Tecnativa/ansible-role-docker/tree/master/tests
