# About

This is a WildFly experiment.

The goal is to build a functional application server as a
[bootable hollow jar](https://docs.wildfly.org/bootablejar)
using the [Galleon Maven plugin](https://docs.wildfly.org/galleon-plugins).

Configuration is done using Galleon feature packs.

## Try it out

The repository ships with a `Dockerfile` which you can use to build and run the
application server.

```fish
docker build --network=host -t (whoami)/(basename (echo "$PWD")) .
docker run (whoami)/(basename (echo "$PWD")) --version
```