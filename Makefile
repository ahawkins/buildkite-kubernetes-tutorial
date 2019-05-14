Gemfile.lock: Gemfile
	docker-compose run --rm -w /data bundler
	touch $@
