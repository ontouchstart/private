# https://docs.docker.com/develop/develop-images/dockerfile_best-practices/#understand-build-context
all:    v1 v2
	cat -n v1
	cat -n v2

myproject:
	mkdir myproject
	cd myproject \
                && echo "hello" > hello \
                && echo "FROM busybox\nCOPY /hello /\nRUN cat /hello" > Dockerfile

v1:     myproject
	cd myproject \
		&& docker build --no-cache -t helloapp:v1 . 
	docker inspect helloapp:v1 | tee v1

v2:     myproject
	cd myproject \
		&& mkdir -p dockerfiles context \
		&& cp Dockerfile dockerfiles \
		&& cp hello context \
		&& docker build --no-cache -t helloapp:v2 -f dockerfiles/Dockerfile context 
	docker inspect helloapp:v2 | tee v2

clean:
	rm -rf myproject v1 v2
