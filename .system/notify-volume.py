#!/usr/bin/env python

import os
import sys
from subprocess import check_output

directory = os.path.dirname(os.path.abspath(__file__))
volume = check_output([os.path.join(directory, "get-volume.sh")]).strip()
cmd ="notify-send \" \" -i notification-audio-volume-high -h int:value:"+str(volume)+" -h string:synchronous:volume"
os.system(cmd)
