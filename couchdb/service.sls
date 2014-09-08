include:
  - .install
  - .user

couchdb_install_service:
  file.copy:
    - name: /etc/init.d/couchdb
    - source: /usr/local/etc/init.d/couchdb
    - force: True
    - require:
      - cmd: couchdb_install
      - user: couchdb_user
      - file: /usr/local/etc/couchdb
      - file: /usr/local/var/lib/couchdb
      - file: /usr/local/var/log/couchdb
      - file: /usr/local/var/run/couchdb


couchdb:
  service.running:
    - require:
      - file: couchdb_install_service
