use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :pillowtalk, Pillowtalk.Endpoint,
  secret_key_base: "GTHGvvcchOlOz8F9FH+lUaAfbZqvAeJuwr1y84msLy6W4+cJOSZJJtu8YvSUkRxV"

# Configure your database
config :pillowtalk, Pillowtalk.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "pillowtalk_prod"
