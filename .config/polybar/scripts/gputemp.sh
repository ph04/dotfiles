#!/bin/bash

temp=$(sensors | rg edge | cut -c 16-22)

echo GPU: $temp