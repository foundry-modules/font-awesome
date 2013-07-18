all: copy-less-files copy-assets

include ../../build/modules.mk

MODULE = font-awesome
DESTINATION = ${STYLES_DIR}/${MODULE}

SOURCE_ASSET_FILES = font/*
TARGET_ASSET_FOLDER_NAME = font

copy-less-files: create-style-folder
	cat less/variables.less less/mixins.less less/path.less less/core.less less/bootstrap.less less/extras.less less/icons.less > ${TARGET_STYLE_FOLDER}/default.less
	cp less/font-awesome-ie7.less ${TARGET_STYLE_FOLDER}/ie7.less



