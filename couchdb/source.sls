include:
  - .deps

{% from "couchdb/map.jinja" import couchdb with context %}

couchdb_create_tmp:
  file.directory:
    - name: {{ couchdb.tmp_dir }}
    - makedirs: True

couchdb_extract_source:
  archive.extracted:
    - name: {{ couchdb.tmp_dir }}
    - source: {{ couchdb.source }}
    - source_hash: {{ couchdb.source_hash }} 
    - archive_format: tar
    - if_missing: {{couchdb.tmp_dir}}/apache-couchdb-{{couchdb.version}}
    - tar_options: z
    - require:
      - pkg: couchdb_install_deps
      - file: couchdb_create_tmp
