#!/bin/bash

temp=$(sensors | rg Tctl | tail -c 10 | tr -d " ")

echo CPU: $temp