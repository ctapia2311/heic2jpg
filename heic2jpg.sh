#!/bin/bash

# written by Christian Tapia


#heic2jpg dependancies:
#   libheif-examples         - provides the heif-dec / heif-convert CLI
#   libheif-plugin-libde265  - HEIC decoder (needed to read iPhone photos)
# install: sudo apt install libheif-examples libheif-plugin-libde265

if ! command -v heif-dec > /dev/null; then
    echo "Libheif not found, please run: 'sudo apt install libheif-examples libheif-plugin-libde265'"
    exit 1
fi


if [[ ! $1 ]]; then
    echo "Nothing to convert, exiting...."
    exit 1
else
    F=$1
    heif-dec "$F" "${F%.*}.jpg"
fi
