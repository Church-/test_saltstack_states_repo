configure.sshd:
    file.managed:
      - name: /etc/ssh/sshd_config
      - source: salt://files/confs/ssh/sshd_config
      - user: root
      - group: root
      - mode: 644

sshd:
  service.running:
    - enable: True
    - reload: True
    - watch:
      - file: configure.sshd