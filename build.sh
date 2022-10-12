#! /bin/sh -eux

mkdir -p ${BUILD_DIR}
pdflatex -output-directory=${BUILD_DIR} /src/${DOCUMENT}