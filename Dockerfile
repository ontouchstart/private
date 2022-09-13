# https://hub.docker.com/r/emscripten/emsdk
FROM emscripten/emsdk:3.1.21

# Install required tools that are useful for your project i.e. ninja-build
RUN apt update && apt install -y ninja-build vim 
RUN emsdk list
# RUN emsdk install sdk-upstream-main-64bit 
# RUN emsdk activate sdk-upstream-main-64bit
