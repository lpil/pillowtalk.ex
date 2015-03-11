use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :pillowtalk, Pillowtalk.Endpoint,
  secret_key_base: "2b028tJ/i+qyMLQ+5sA+2auyJ3rwWfIhNa86rs9Y0WNwX/SKW2mAOTUD9jP4qWIf"

# Configure your database
config :pillowtalk, Pillowtalk.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "pillowtalk_prod"
