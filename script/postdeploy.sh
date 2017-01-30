#!/bin/bash +x

chromeDriverVersion=$(curl https://chromedriver.storage.googleapis.com/LATEST_RELEASE)
cd webdriverio-test
curl -O http://selenium-release.storage.googleapis.com/3.0/selenium-server-standalone-3.0.1.jar

if [ "$(uname)" == "Darwin" ]; then
  # download and unpack the OSX version
  echo "OSX detected, downloading chromedriver for Mac OS..."
  curl -L https://chromedriver.storage.googleapis.com/$chromeDriverVersion/chromedriver_mac64.zip | funzip  > chromedriver
  chmod +x chromedriver
  ./chromedriver &
elif [[ $CI ]]; then
  # CircleCI ships with chromedriver v27
  echo "CI runtime detected, skipping chromedriver download..."
  chromedriver &
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  # download and unpack the Linux version
  echo "Linux detected, downloading chromedriver for 64 Bit Linux OS's..."
  curl -L https://chromedriver.storage.googleapis.com/$chromeDriverVersion/chromedriver_linux64.zip | gzip -dc > chromedriver
  chmod +x chromedriver
  ./chromedriver &
fi

echo "Starting selenium server..."
java -jar -Dwebdriver.chrome.driver=./chromedriver selenium-server-standalone-3.0.1.jar > seleniumServer.log 2>&1 &

echo "installing node dependancies..."
npm i

echo "Running tests..."
npm test
