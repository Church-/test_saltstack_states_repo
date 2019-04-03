{%- if grains.get('firstboot', True) %}
include:
  - users.groups
  - users.users
  - network.firewall
  - circonus.setup
  - sumologic.setup
  - coronerd.setup
  - packagerepo.setup
  - packages.packages

set first boot grain:
  grains.present:
  - name: firstboot
  - value: false
{%- endif %}