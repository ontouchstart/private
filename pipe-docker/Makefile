# https://docs.docker.com/develop/develop-images/dockerfile_best-practices/#pipe-dockerfile-through-stdin
.ONESHELL:

all: 	test1 test2

test1:
	echo 'FROM busybox\nRUN echo "test1"' | docker build -t test1 -
	docker inspect test1
test2:
	docker build -t test2 -<<EOF
		FROM busybox
		RUN echo "test2"
		EOF
	docker inspect test2
