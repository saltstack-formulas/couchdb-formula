include:
  - .install

{% from "couchdb/map.jinja" import couchdb with context %}

couchdb_remove:
  cmd.run:
    - name: make uninstall
    - cwd: {{couchdb.tmp_dir}}apache-couchdb-{{couchdb.version}}/
    - require:
      - cmd: couchdb_install
