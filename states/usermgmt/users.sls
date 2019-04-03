{% for usr in ['14 user names here']%}

{{ usr }}:	  
  user.present:
    - fullname: {{ usr }}
    - shell: /bin/bash
    - home: /home/{{ usr }}
    - groups:
      - sudo
  ssh_auth.present:
    - user: {{ usr }}
    - source: salt://files/keys/ssh/{{ usr }}.rsa_pub_key
    - config: '%h/.ssh/authorized_keys'
{% endfor %}
