.PHONY: debug release _all

SRC=.
DEBUG=./Debug
RELEASE=./Release

debug: 
	mbed compile -m MTS_DRAGONFLY_L471QG -t GCC_ARM --profile debug -j 8 --source=${SRC} --build=${DEBUG} --stats-depth 2

release: 
	mbed compile -m MTS_DRAGONFLY_L471QG -t GCC_ARM --profile release -j 8 --source=${SRC} --build=${RELEASE}

all: debug \
	release \

clean:
	rm -rf ${DEBUG}
	rm -rf ${RELEASE}
	find mbed-os/tools -name "*.pyc" | xargs rm -rf
