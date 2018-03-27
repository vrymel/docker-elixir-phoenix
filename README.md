# Docker Elixir Phoenix

This repository is a `Dockerfile` definition for creating a base Elixir image with Phoenix pre-installed.

`Node` is pre-installed as well.

#### Notes

`hex` and `rebar` are not pre-installed, so you need to do a mix install for both.

Example `RUN` command for installing _hex_ and _rebar_:

    RUN mix local.hex --force

    RUN mix local.rebar --force

#### Installing project dependencies

You need to manually install the project dependencies:

Example of running `mix deps.get` on a service named `app` in _docker-compose_.

    docker-compose run app mix deps.get

Installing `node_modules` should be as easy as accessing the container and installing `npm install` from there.

    cd assets && npm install
