all: copy-less-files create-asset-folder copy-assets

include ../../build/modules.mk

MODULE = font-awesome
DESTINATION = ${STYLES_DIR}/${MODULE}

SOURCE_ASSET_FILES = fonts/*
TARGET_ASSET_FOLDER_NAME = fonts

copy-less-files: create-style-folder
	cp -Rp less/*.less ${TARGET_STYLE_FOLDER}

	# variables.less
	cat ${TARGET_STYLE_FOLDER}/variables.less | sed 's/..\/fonts/\@\{global_uri\}\/font-awesome\/fonts/g' > ${TARGET_STYLE_FOLDER}/variables.raw
	rm -fr ${TARGET_STYLE_FOLDER}/variables.less
	mv ${TARGET_STYLE_FOLDER}/variables.raw ${TARGET_STYLE_FOLDER}/variables.less