.PHONY : build clean test

build : test bin/sidekiq bin/web

shard.lock : shard.yml
	shards install --ignore-crystal-version

bin/sidekiq : sidekiq.cr
	crystal build sidekiq.cr -o bin/sidekiq

bin/web : web.cr
	crystal build web.cr -o bin/web

clean :
	rm *.dwarf web sidekiq

test :
	crystal spec
