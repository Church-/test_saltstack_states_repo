setup.hostname:
  cmd.run:
    - name: "hostnamectl set-hostname {{ grains['internal_domain'] }}"

set.hosts.file:
  cmd.run:
    - name: "sed s/localhost/{{ grains['internal_domain'] }}/g -i /etc/hosts"