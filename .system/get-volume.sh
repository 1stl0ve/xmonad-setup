#!/usr/bin/env bash

amixer get Master | awk -F'[\[\]]' '{if ($6 == "off") {print "Muted"; } else {print $2;}}' | tail -n 1
