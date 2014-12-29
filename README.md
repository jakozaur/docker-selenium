docker-selenium
===============

Latest stable Chrome, Firefox and PhantomJS with Selenium installed
on Ubuntu Trusty.

Usage:
```
docker pull jakozaur/docker-selenium
docker run -p 4444:4444 -p 5555:5555 -d jakozaur/docker-selenium
```

Screen size: 1366x768, the optional first argument is scale factor.


NOTE: I disabled setuid-sandbox in Chrome, so we don't need to run Docker in priviliaged mode.

Ports:
- 4444 is Selenium port
- 5555 VNC port to see running tests, password 'emtpy'
