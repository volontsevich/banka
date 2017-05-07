PostgreSQL
=========

Install PostgreSQL database.

Requirements
------------

Ubuntu trusty with the package python-pycurl and python-software-properties installed.

Role Variables
--------------

Available variables are listed below, along with default values (see [defaults/main.yml](defaults/main.yml) ):


        pgdb_version: 9.4
        pgdb_sudo_user: postgres
        pgdb_sudo_pass: ''
        pgdb_users: [
          {
            user: username,
            password: userPassword,
            database: dbName
          }
        ]
        pgdb_databases: [
          dbName
        ]
        pgdb_postgresql_locale: en_US.UTF-8

Dependencies
------------

None.

License
-------

MIT

Author Information
------------------

[MobiDev](http://mobidev.biz/).
