#!/bin/bash

docker inspect $1 -f '{{.NetworkSettings.IPAddress}}'

