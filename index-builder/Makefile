../IndexDirectory: container data Dockerfile
	docker run --rm -it -v ${CURDIR}/../:/data factr/cliff-index-builder

container: Dockerfile
	docker build -t factr/cliff-index-builder .

data:
	mkdir data
