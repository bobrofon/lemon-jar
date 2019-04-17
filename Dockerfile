FROM ubuntu:bionic

RUN \
	apt-get update && \
	apt-get install --no-install-recommends -y \
		curl gcc clang cmake ninja-build valgrind cppcheck && \
	rm -rf /var/lib/apt/lists/*

WORKDIR /src
