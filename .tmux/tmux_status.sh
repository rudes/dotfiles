#!/bin/bash

IP_ADDR=`ip addr | grep inet | grep eth0 | awk '{print $2}' | rev | cut -c 4- | rev`
echo $IP_ADDR
