andrewrothstein.k3s
=========
[![Build Status](https://travis-ci.org/andrewrothstein/ansible-k3s.svg?branch=master)](https://travis-ci.org/andrewrothstein/ansible-k3s)

Installs [k3s](https://k3s.io/).

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.k3s
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
