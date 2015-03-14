use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :pillowtalk, Pillowtalk.Endpoint,
  secret_key_base: "NuWdNkEHKgn+MQAG/4+9Fg/B3UntFtML9+WytFkKrM+ag+lh8gVK+3BkDU2f651s"

# Configure your database
config :pillowtalk, Pillowtalk.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "pillowtalk_prod"
