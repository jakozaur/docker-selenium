docker-selenium
===============

Latest stable Chrome, Firefox and PhantomJS with Selenium installed
on Ubuntu Trusty.

Usage:
```shell
docker pull jakozaur/docker-selenium
docker run --privileged -p 4444:4444 -p 5555:5555 -d jakozaur/docker-selenium
```

NOTE: --priviliaged flag is required by Chrome sandbox, it does not start without it.

Ports:
- 4444 is Selenium port
- 5555 VNC port to see running tests
