# ![cache-machine](http://img195.imageshack.us/img195/5371/cachemachinefinal2.png)

Redis adapter for Cache Machine: http://github.com/partyearth/cache-machine

## Installing

In your config/environments/env.rb file:

```ruby
url = "redis://user:pass@host.com:9383/"
uri = URI.parse(url)
CacheMachine::Cache.timestamps_adapter = CacheMachine::Adapters::Redis.new(:host => uri.host, :port => uri.port, :password => uri.password)
```

Also note, you can set _storage_adapter_ and _map_adapter_ as well.

## Contributing to cache-machine-redis

* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it
* Fork the project
* Start a feature/bugfix branch
* Commit and push until you are happy with your contribution
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Copyright

Copyright (c) 2011 PartyEarth LLC. See LICENSE.txt for details.
