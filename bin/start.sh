#!/bin/bash

export DISPLAY=:123
export SCALE=${1:-1.0}

su - selenium -c "Xvfb $DISPLAY -shmem -screen 0 1366x768x16 &"
sleep 0.5 # Make sure Xvfb started
su - selenium -c "x11vnc -display $DISPLAY -scale $SCALE -passwd empty -rfbport 5555 -N -forever &"

su - selenium -c "start-selenium"
