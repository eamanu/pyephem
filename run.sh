#!/bin/bash

export PYTHONPATH=~/ephem4/src:~/sgp4:~/jplephem
python3 prototype.py || exit
diff -u <(python2 prototype.py) <(python3 prototype.py)
