#!/bin/sh
sudo cp *.crt /usr/local/share/ca-certificates/
sudo update-ca-certificates
