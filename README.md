# Pillowtalk

A webchat application for helplines, and similar organisations.

Development documentation can be found
[here](https://github.com/lpil/pillowtalk.ex/tree/master/doc).

## Install it

You've got Erlang, Elixir, and PostgreSQL installed, right?

```
mix deps.get
psql -c "CREATE DATABASE pillowtalk"
psql -c "CREATE USER postgres WITH PASSWORD 'postgres'"
psql -c "GRANT ALL PRIVILEGES ON DATABASE pillowtalk to postgres"
mix ecto.migrate Pillowtalk.Repo
```

## Run it

```
mix phoenix.server
```

## Test it

```
psql -c "CREATE DATABASE pillowtalk_test"
psql -c "GRANT ALL PRIVILEGES ON DATABASE pillowtalk_test to postgres"
mix test
```
