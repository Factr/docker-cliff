# Clavin index builder for Cliff

Cliff needs a geographical place name index to analyze text.  This Dockerfile
sets up a container to build the index.

The volume mapping allows the resulting indices to written to host directory, in the
build context for the Cliff container.

```
make
```
