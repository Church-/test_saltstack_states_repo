generate_cert:
  cmd.run:
    - name: 'certbot certonly --standalone -m admin@backtrace.io --agree-tos -d {{ grains["external_domain"] }}