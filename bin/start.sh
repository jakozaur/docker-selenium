#!/bin/bash

export DISPLAY=:123
export SCALE=${1:-1.0}

Xvfb $DISPLAY -shmem -screen 0 1366x768x16 &
sleep 0.5 # Make sure Xvfb started
x11vnc -display $DISPLAY -scale $SCALE -passwd empty -rfbport 5555 -N -forever &

su - selenium -c "start-selenium"
