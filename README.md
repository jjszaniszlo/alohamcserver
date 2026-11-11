# Aloha Minecraft Network

This is the docker compose configuration for a Minecraft network consisting of 2 backend servers, one survival and one creative, a proxy which connects them, mcron, and 2 databases for data that needs to persist between them such as the permissions plugin.

The Minecraft services are based on the itzg/minecraft images but are being built with Eclipse Temurin 23 as can be seen within the Dockerfile.

Take a look at [the official github repo for itzg/docker-minecraft-server](https://github.com/itzg/docker-minecraft-server) for more info.
