.ONESHELL:

all: 
	# create helloworld.cpp
	cat > helloworld.cpp << EOF
	#include <iostream>
	int main() {
	  std::cout << "Hello World!" << std::endl;
	  return 0;
	}
	EOF

	# compile with docker image
	docker run \
  		--rm \
		-v `pwd`:/src \
		-u `id -u`:`id -g` \
		emscripten/emsdk \
		emcc helloworld.cpp -o helloworld.js

	# execute on host machine
	node helloworld.js
