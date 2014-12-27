export DISPLAY=:655
Xvfb :655 -shmem -screen 0 1366x768x16 &
x11vnc -display :655 -N -forever &

su - selenium -c "start-selenium"
