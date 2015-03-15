# Pillowtalk

## Install it

You've got postgres installed, right?

```
mix deps.get
psql -c "CREATE DATABASE pillowtalk"
psql -c "CREATE USER postgres WITH PASSWORD 'postgres'"
psql -c "GRANT ALL PRIVILEGES ON DATABASE pillowtalk to postgres"
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

## Other stuff

Run migration: `mix ecto.migrate Pillowtalk.Repo`
