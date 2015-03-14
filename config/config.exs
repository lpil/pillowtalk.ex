# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :pillowtalk, Pillowtalk.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "eMs6/WjPEnEsPVzmlguhx9/OkgEpjpEcip7ANUkaX5TwKpUgE0X+5e2cu62e/32f",
  debug_errors: false,
  pubsub: [name: Pillowtalk.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
