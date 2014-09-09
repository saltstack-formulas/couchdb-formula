===============
CouchDB-Formula
===============

Installs and configures `CouchDB (http://couchdb.apache.org)` from source and its dependencies.

.. note::

    See the full `Salt Formulas installation and usage instructions
    <http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.

Available states
================

.. contents::
    :local:

``couchdb``
----------------

Install the ``couchdb`` package and enable the service. This executes all states listed below. 


``couchdb.deps``
----------------

Installs the dependencies for couchdb from source.


``couchdb.source``
----------------

Retrieves the source of couch-db. The ``version`` can be set through the pillar. 
The target of extraction can also be defined through the pillar with ``tmp_dir``


``couchdb.configure``
---------------------

Calls the ``./configure`` command unless it has already previously been run for that version.


``couchdb.install``
-------------------

Calls the ``make`` && ``make install`` unless the source has already been installed to the standard folders.


``couchdb.user``
----------------

Installs the proper user, the {{user}} variable can be set in the pillar.


``couchdb.service``
-------------------

Sets up the service and makes sure it is running.


Credits
=======

\(c) by AISLER, 2014, http://www.aisler.net
  **We use saltstack everyday to make hardware less hard!**
