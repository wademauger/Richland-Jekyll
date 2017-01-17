#! /bin/bash

string=$OSTYPE
cd webdriverio-test
curl -O http://selenium-release.storage.googleapis.com/3.0/selenium-server-standalone-3.0.1.jar

if [[ $string == *"darwin"* ]]; then
  # download and unpack the OSX version
  echo "OSX detected, downloading geckodriver for Mac OS..."
  curl -L https://github.com/mozilla/geckodriver/releases/download/v0.11.1/geckodriver-v0.11.1-macos.tar.gz | tar xz
else
  # download and unpack the Linux version
  echo "Linux detected, downloading geckodriver for 64 Bit Linux OS's..."
  curl -L https://github.com/mozilla/geckodriver/releases/download/v0.11.1/geckodriver-v0.11.1-linux64.tar.gz | tar xz	
fi

echo "Starting selenium server..."
java -jar -Dwebdriver.gecko.driver=./geckodriver selenium-server-standalone-3.0.1.jar > seleniumServer.log 2>&1 &

echo "installing node dependancies..."
npm i

echo "Running tests..."
npm test
