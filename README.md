# Vapor CLI

A Docker image providing Laravel's [Vapor](https://github.com/laravel/vapor-cli) CLI. Available at
[Docker Hub](https://hub.docker.com/r/devdrops/vapor-cli/).

Each tag is based on Vapor's version, where `latest` will be the current stable version.

**Important:** as Vapor requires authentication to execute it's commands, this image does not offer ways to persist any
credentials. You'll have to provide it every time you use this image :wink:

## How to Run?

```bash
docker run -ti --rm devdrops/vapor-cli:latest vapor --version
```
