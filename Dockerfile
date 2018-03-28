FROM elixir:1.6.4

RUN curl -sL https://deb.nodesource.com/setup_6.x -o nodesource_setup.sh && \
    bash nodesource_setup.sh && \
    apt-get install nodejs && \
    mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phx_new.ez && \
    mix local.hex --force && \ 
    mix local.rebar --force && \
    apt-get install inotify-tools -y

CMD "/bin/bash"
