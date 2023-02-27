build:
	docker build -t monitoring-tool -f docker/Dockerfile .

run:
	docker run -it --volume $(PWD):/app monitoring-tool bash

