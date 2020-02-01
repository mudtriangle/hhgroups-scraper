build-docker:
	docker build . -t hhgroups_parser:1.0
	docker rm -f hhgroups_parser || true
	docker run --cpus 4 --cpu-shares 1024 --name hhgroups_parser -d -v $(PWD):/app:rw hhgroups_parser:1.0
