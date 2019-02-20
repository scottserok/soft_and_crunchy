.PHONY : all clean test

all : shard.lock sidekiq web test

shard.lock : shard.yml
	shards install

sidekiq : sidekiq.cr
	crystal build sidekiq.cr

web : web.cr
	crystal build web.cr

clean :
	rm *.dwarf web sidekiq

test :
	crystal spec
