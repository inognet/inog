#!/bin/bash

cd pub

pyver=$(python --version 2>&1)

if [[ $pyver =~ ^Python[[:space:]]2 ]]; then
    echo "Starting Python 2 webserver";
    python -m SimpleHTTPServer 8000
elif [[ $pyver =~ ^Python[[:space:]]3 ]]; then
    echo "Starting Python 3 webserver";
    python -m http.server 8000
else
    echo "No compatible python version, goodbye.";
    exit 1
fi
