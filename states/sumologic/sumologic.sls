install_sumologic:
  pkg.installed:
    - sources:
      - sumocollector: https://collectors.us2.sumologic.com/rest/download/deb/64

config_sumologic:
    file.managed:
      - name: /opt/SumoCollector/config/user.properties
      - source: salt://files/confs/sumologic/user.properties
      - template: jinja
      - context:
          name: {{ salt['grains.get']('internal_domain','failure') }}
          id: {{ salt['pillar.get']('sumologicaccessid','failure') }}
          key: {{ salt['pillar.get']('sumologicaccesskey','failure') }}
      - makedirs: True
      - user: root
      - group: root
      - mode: 0644

config.syslog.source:
    file.managed:
      - name: /opt/SumoCollector/config/source.json
      - source: salt://files/confs/sumologic/source.json
      - template: jinja
      - context:
          host: {{ grains['internal_domain'] }}
      - makedirs: True
      - user: root
      - group: root
      - mode: 0644


          
collector:
  service.running:
    - enable: True
    - reload: True
