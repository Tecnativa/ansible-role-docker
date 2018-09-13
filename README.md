# Docker

[![Build Status](https://travis-ci.org/Tecnativa/ansible-role-docker.svg?branch=master)](https://travis-ci.org/Tecnativa/ansible-role-docker)
[![GitHub license](https://img.shields.io/github/license/Tecnativa/ansible-role-docker.svg)](https://github.com/Tecnativa/ansible-role-docker/blob/master/LICENSE)
[![Ansible Galaxy](https://img.shields.io/badge/ansible--galaxy-yajo.docker-blue.svg)][galaxy]

Set up docker servers with all of the docker project software stack.

## Requirements

Only [Ansible on Python 3][ansible-py3] is supported.

Supported operating systems:

- Ubuntu:

  - 16.04
  - 18.04

## Role Variables

You are allowed to set just one dict variable: `docker_role_custom`.

It must be in the same format as `docker_role_defaults`, which can be found in
the `vars/main.yml` file. Read there to understand how it works.

When the role gets executed, the first thing it will do is to combine both of
those dicts recursively into a new `docker_role` variable. Rely on that one
if you need to query any configurations in other roles or tasks.

## Example Playbook

```yaml
- hosts: docker
  roles:
  - role: yajo.docker
    vars:
      docker_role_custom:
        app: &install
          present: true
        compose: *install
        engine: *install
        machine: *install
        swarm: *install
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
[Doodba]: https://github.com/Tecnativa/doodba
[galaxy]: https://galaxy.ansible.com/yajo/docker
[Tecnativa]: https://www.tecnativa.com
[test]: https://github.com/Tecnativa/ansible-role-docker/tree/master/tests
