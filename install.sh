#!/bin/bash
VENV=/usr/local/share/wiedehopf-mlat-client/venv

rm -rf "$VENV"
python3 -m venv "$VENV"
source "$VENV/bin/activate"
python3 -c "import setuptools" || python3 -m pip install setuptools
python3 -c "import asyncore" || python3 -m pip install pyasyncore
python3 -c "import gps" || python3 -m pip install gps # optional, only needed if using GPSD
python3 setup.py build
python3 setup.py install
