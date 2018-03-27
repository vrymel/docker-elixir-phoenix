# Docker Elixir Phoenix

This repository is a Dockerfile definition for creating a base Elixir image with `Phoenix`, `hex`, and `rebar` pre-installed.

`Node` is pre-installed as well.

#### Installing project dependencies

You need to manually install the project dependencies:

Example of running `mix deps.get` on a service named `app` in _docker-compose_.

    docker-compose run app mix deps.get

Installing `node_modules` should be as easy as accessing the container and installing `npm install` from there.

    cd assets && npm install
