{% set hostname = grains['internal_domain'] %}

run.cosi.script:
  cmd.run:
    - name: 'curl -sSL https://setup.circonus.com/install | bash -s -- --cosiurl https://setup.circonus.com/ --key  {{ salt["pillar.get"]("circonuskey","failure") }} --app {{ hostname }}'

circonus-agent:
  service.running:
    - enable: True
    - reload: True
