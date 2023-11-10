#!/bin/bash

# Set the URL for downloading curl
CURL_URL="http://curl.haxx.se/download/curl-7.79.0.tar.bz2"
CURL_TARBALL="curl.tar.bz2"

# Use wget to download curl
echo "Downloading curl..."
if wget "${CURL_URL}" -O "${CURL_TARBALL}"; then
    echo "Download complete."
else
    echo "Error downloading curl."
    exit 1
fi

# Extract the downloaded file
echo "Extracting..."
if tar -xjf "${CURL_TARBALL}"; then
    echo "Extraction complete."
else
    echo "Error extracting curl."
    exit 1
fi

# Navigate into the extracted directory
cd curl-7.79.0 || exit

# Configure curl
echo "Configuring..."
if ./configure; then
    echo "Configuration complete."
else
    echo "Error in configuration."
    exit 1
fi

# Build and install curl
echo "Installing curl..."
if make && sudo make install; then
    echo "curl has been installed successfully."
else
    echo "Error installing curl."
    exit 1
fi
