include ../../build/modules.mk

MODULE = font-awesome
DESTINATION = ${STYLES_DIR}/${MODULE}

all:
	rm -fr ${DESTINATION}
	mkdir -p ${DESTINATION}
	cp less/font-awesome.less ${DESTINATION}/default.less
	cp less/font-awesome-ie7.less ${DESTINATION}/ie7.less
	mkdir -p ${DESTINATION}/font
	cp font/* ${DESTINATION}/font
