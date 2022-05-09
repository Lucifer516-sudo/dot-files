#!/bin/bash

apt update -y
apt install nodejs npm git python3 --no-install-recommends -y
apt clean
