include: 
  - .install

{% from "couchdb/map.jinja" import couchdb with context %}

couchdb_user:
  user.present:
    - name: {{couchdb.user}}
    - fullname: CouchDB Admin
    - createhome: False
    - home: /usr/local/var/lib/couchdb
    - shell: /bin/bash
    - system: True
    - require: 
      - cmd: couchdb_install


{% set dirs = [
                '/usr/local/etc/couchdb', 
                '/usr/local/var/lib/couchdb', 
                '/usr/local/var/log/couchdb', 
                '/usr/local/var/run/couchdb'
              ] 
%}

{% for dir in dirs %}
{{ dir }}:
  file.directory:
    - user: {{couchdb.user}}
    - group: {{couchdb.user}}
    - mode: 770 
    - recurse:
      - user
      - group
      - mode 
{% endfor %}
