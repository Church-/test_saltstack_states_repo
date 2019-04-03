base:
  '*':
    - states.hostname.hostname
    - states.usermgmt.users
    - states.usermgmt.groups
    - states.repos.domain-stable
    - states.repos.nodesource
    - states.packages.packages
    - states.packages.pip
    - states.network.sshd
