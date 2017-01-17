#! /bin/bash

string=$OSTYPE
cd webdriverio-test
curl -O http://selenium-release.storage.googleapis.com/3.0/selenium-server-standalone-3.0.1.jar

if [[ $string == *"darwin"* ]]; then
  # download and unpack the OSX version
  echo "OSX detected, downloading chrome driver for Mac OS..."
  curl -L https://chromedriver.storage.googleapis.com/2.27/chromedriver_mac64.zip | funzip  > chromedriver
else
  # download and unpack the Linux version
  echo "Linux detected, downloading chrome driver for 64 Bit Linux OS's..."
  curl -L https://chromedriver.storage.googleapis.com/2.27/chromedriver_linux64.zip | gzip -dc > chromedriver
fi

chmod +x chromedriver
./chromedriver &

echo "Starting selenium server..."
java -jar -Dwebdriver.gecko.driver=./geckodriver selenium-server-standalone-3.0.1.jar > seleniumServer.log 2>&1 &

echo "installing node dependancies..."
npm i

echo "Running tests..."
npm test
