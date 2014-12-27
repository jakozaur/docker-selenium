export DISPLAY=:123
Xvfb :123 -shmem -screen 0 1366x768x16 &
x11vnc -display :123 -passwd empty -rfbport 5555 -N -forever &

su - selenium -c "start-selenium"
