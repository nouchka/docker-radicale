#!/bin/bash

##Wait for init
sleep 120

response=$(curl -u user:password --write-out %{http_code} --silent --output content.html http://localhost:5232/)

echo "Response code "$response
if [ $response != "200" ]; then
	exit 1
fi

response=$(curl -u user:wrong-password --write-out %{http_code} --silent --output content.html http://localhost:5232/)

echo "Response code "$response
if [ $response != "401" ]; then
	exit 1
fi
