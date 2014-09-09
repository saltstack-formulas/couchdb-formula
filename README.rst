===============
CouchDB-Formula
===============

Installs and configures `CouchDB (http://couchdb.apache.org)` from source and its dependencies.

.. note::

    See the full `Salt Formulas installation and usage instructions
    <http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.


couchdb
-------

Install the ``couchdb`` package and enable the service.


Available states
----------------

Note:
If you just include couchdb, i.e. its init.sls file, then all of the below should run in order, as they require each other.

* deps
  - installs the dependencies for couchdb from source
  
* source
  - retrieves the source of couch-db the {{version}} can be set in the pillar
  - note: the target of extraction can also be defined through the pillar with {{tmp_dir}}
  
* configure
  - calls the ./configure command unless it has already previously been run for that version
  
* install
  - calls the make && make install unless the source has already been installed to the standard folders

* user
  - installs the proper user, the {{user}} variable can be set in the pillar
  
* service
  - sets up the service and makes sure it is running
  

Credits
-------
\(c) by AISLER, 2014, http://www.aisler.net 
    **We use saltstack everyday to make hardware less hard!**
