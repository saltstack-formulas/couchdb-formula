include:
  - .install
  - .user

couchdb_install_service:
  file.managed:
    - name: /etc/systemd/system/couchdb.service
    - contents: |
        [Unit]
        Description=Couchdb service
        After=network.target
        [Service]
        Type=simple
        User=couchdb
        ExecStart=/usr/local/bin/couchdb
        Restart=always
    - require:
      - cmd: couchdb_install
      - user: couchdb_user
      - file: /usr/local/etc/couchdb
      - file: /usr/local/var/lib/couchdb
      - file: /usr/local/var/log/couchdb
      - file: /usr/local/var/run/couchdb

service.systemctl_reload:
  module.run:
    - onchanges:
      - file: couchdb_install_service

couchdb:
  service.running:
    - require:
      - file: couchdb_install_service
