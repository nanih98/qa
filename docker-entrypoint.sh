#! /bin/bash

echo -e  "Welcome to our custom nodejs"

# Show node info
echo "Node version: $(npm -v)"
npm config list

node test
