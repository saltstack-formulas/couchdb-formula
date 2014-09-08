include: 
  - .install

couchdb_remove:
  cmd.run:
    - name: make uninstall
    - cwd: /tmp/couch_db/apache-couchdb-1.6.1/
    - require:
      - cmd: couchdb_install


