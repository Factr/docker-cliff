# Cliff on Docker

[Cliff](http://cliff.mediameter.org) is a library for geoparsing text. This Dockerfile builds a container hosting a Tomcat server for the HTTP API.
```
docker pull factr/cliff
docker run -p 8015:8080 factr/cliff
```
Rebuild w/
```
docker build -t factr/cliff .
```
after (re)building the Clavin indices, cf. [index-builder](index-builder) folder.
