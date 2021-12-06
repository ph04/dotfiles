#!/bin/bash

sudo su -c "echo -n 0x02 > /sys/module/hid_apple/parameters/fnmode"
