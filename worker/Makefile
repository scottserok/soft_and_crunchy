.PHONY : build clean test update

build : shard.lock test bin/sidekiq bin/web

shard.lock : shard.yml
	shards install --ignore-crystal-version

bin/sidekiq : sidekiq.cr
	crystal build sidekiq.cr -o bin/sidekiq

bin/web : web.cr
	crystal build web.cr -o bin/web

clean :
	rm bin/web* bin/sidekiq*

test :
	crystal spec

update :
	shards update --ignore-crystal-version
