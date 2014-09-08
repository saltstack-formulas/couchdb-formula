{% from "couchdb/map.jinja" import couchdb with context %}

couchdb_install_deps:
  pkg.installed:
    - pkgs:
       {% for pkg in couchdb.packages %}
       - {{pkg}}
       {% endfor %}



