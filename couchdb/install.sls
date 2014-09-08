include:
  - .configure

{% from "couchdb/map.jinja" import couchdb with context %}

couchdb_install:
  cmd.run:
    - name: make && make install
    - unless: test -f /usr/local/bin/couchdb
    - cwd: {{couchdb.tmp_dir}}/apache-couchdb-{{couchdb.version}}
    - require:
      - cmd: couchdb_configure

