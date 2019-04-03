nodesource:
  pkgrepo.managed:
    - humanname: NodeJS Repo
    - name: "deb https://deb.nodesource.com/node_10.x cosmic main /"
    - file: /etc/apt/sources.list.d/nodesource.list
    - key_url: https://deb.nodesource.com/gpgkey/nodesource.gpg.key
