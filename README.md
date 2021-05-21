```
$ bundle install
$ bundle exec ruby migrate.rb
$ bundle exec ruby sample.rb
Traceback (most recent call last):
        6: from sample.rb:15:in `<main>'
        5: from activerecord-6.1.3.2/lib/active_record/querying.rb:22:in `delete_all'
        4: from composite_primary_keys-13.0.0/lib/composite_primary_keys/relation.rb:77:in `delete_all'
        3: from activerecord-6.1.3.2/lib/arel/tree_manager.rb:55:in `to_sql'
        2: from activerecord-6.1.3.2/lib/active_record/connection_handling.rb:283:in `connection'
        1: from activerecord-6.1.3.2/lib/active_record/connection_handling.rb:327:in `retrieve_connection'
activerecord-6.1.3.2/lib/active_record/connection_adapters/abstract/connection_pool.rb:1125:in `retrieve_connection': No connection pool for 'ActiveRecord::Base' found. (ActiveRecord::ConnectionNotEstablished)
```
