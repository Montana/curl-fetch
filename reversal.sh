#!/bin/bash

fetch_wget_with_curl() {
    WGET_URL="https://ftp.gnu.org/gnu/wget/wget-latest.tar.gz"
    WGET_TARBALL="wget.tar.gz"

    if ! command -v curl &> /dev/null; then
        echo "curl is not installed. Please install it to proceed."
        return 1
    fi

    echo "Downloading wget from ${WGET_URL} using curl..."

    if curl -o "${WGET_TARBALL}" "${WGET_URL}"; then
        echo "wget downloaded successfully to ${WGET_TARBALL}."
    else
        echo "Failed to download wget with curl. Please check your internet connection and the URL."
        return 1
    fi
}

fetch_wget_with_curl
