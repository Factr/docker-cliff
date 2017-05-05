# Clavin index builder for Cliff

Cliff needs a geographical place name index to analyze text.  This Dockerfile
sets up a container to build the index.
```
docker build -t factr/cliff-index-builder .
docker run --rm factr/cliff-index -v $(pwd)/IndexDirectory:/opt/CLAVIN/IndexDirectory
```
The volume mapping allows the resulting indices to written to host directory, in the
build context for the Cliff container.
