#!/bin/bash


echo "Downloading Chromium..."
curl "https://storage.googleapis.com/chrome-for-testing-public/$CHROME_VERSION/linux64/chrome-linux64.zip" > /tmp/chrome-linux64.zip

unzip /tmp/chrome-linux64.zip -d /tmp/
mv /tmp/chrome-linux64/ /opt/chrome

curl "https://storage.googleapis.com/chrome-for-testing-public/$CHROME_VERSION/linux64/chromedriver-linux64.zip" > /tmp/chromedriver-linux64.zip
unzip /tmp/chromedriver-linux64.zip -d /tmp/
mv /tmp/chromedriver-linux64/chromedriver /opt/chromedriver
