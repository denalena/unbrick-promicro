#!/bin/bash
set -ef

# Configuration ##############################
FILE=./init.ino.hex # default compiled sketch; can be overwritten by calling the script with a filepath
PORT=/dev/ttyACM0 # default port

# Sparkfun ProMicro 5V 16MHz specific settings
CONF=./avrdude-sparkfun-promicro.conf
DEVICE=atmega32u4
PROGRAMMER=avr109
BAUD=57600

##############################################

if [[ "$1" ]]; then
	FILE="$1"
fi

if [[ ! -a "$PORT" ]]; then
	echo "error: missing port: '${PORT}'"
	exit 1
fi

if [[ ! -a "$FILE" ]]; then
	echo "error: missing file: '${FILE}'"
	exit 2
fi

##############################################
# Flags below copied from Arduino IDE logs, April 2023
# Run `avrdude -h` for descriptions

./avrdude \
	-C${CONF} \
	-v \
	-V \
	-p${DEVICE} \
	-c${PROGRAMMER} \
	-P${PORT} \
	-b${BAUD} \
	-D \
	-Uflash:w:${FILE}:i

