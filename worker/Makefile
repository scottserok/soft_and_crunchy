.PHONY : all clean test

all : shard.lock sidekiq web test

shard.lock : shard.yml
	shards install --ignore-crystal-version

sidekiq : sidekiq.cr
	crystal build sidekiq.cr -o bin/sidekiq

web : web.cr
	crystal build web.cr -o bin/web

clean :
	rm *.dwarf web sidekiq

test :
	crystal spec
