include:
  - .source

{% from "couchdb/map.jinja" import couchdb with context %} 

couchdb_configure:
  cmd.run:
    - name: ./configure
    - cwd: {{couchdb.tmp_dir}}/apache-couchdb-{{couchdb.version}}
    - unless: test -f {{couchdb.tmp_dir}}/apache-couchdb-{{couchdb.version}}/src/Makefile  
    - require:
      - archive: couchdb_extract_source 
 
     
