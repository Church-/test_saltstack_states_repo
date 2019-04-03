vm.swappiness:
  sysctl.present:
    - value:

net.core.somaxconn:
  sysctl.present:
    - value: 65536

net.ipv4.ip_forward:
  sysctl.present:
    - value: 1
