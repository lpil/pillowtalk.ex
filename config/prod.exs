use Mix.Config

config :pillowtalk, Pillowtalk.Endpoint,
  url: [host: "example.com"],
  http: [port: System.get_env("PORT")],
  secret_key_base: "8B6UuLpv/2QtFF5Rvga1Xkgy4xT6nYi/rrzZ7HkO1OlFOPoH+v73l4031gLURsbp"
  
# ## SSL Support
#
# To get SSL working, you will need to add the `https` key
# to the previous section:
#
#  config:pillowtalk, Pillowtalk.Endpoint,
#    ...
#    https: [port: 443,
#            keyfile: System.get_env("SOME_APP_SSL_KEY_PATH"),
#            certfile: System.get_env("SOME_APP_SSL_CERT_PATH")]
#
# Where those two env variables point to a file on
# disk for the key and cert.
  

# Do not pring debug messages in production
config :logger, level: :info

# ## Using releases
#
# If you are doing OTP releases, you need to instruct Phoenix
# to start the server for all endpoints:
#
#     config :phoenix, :serve_endpoints, true
#
# Alternatively, you can configure exactly which server to
# start per endpoint:
#
#     config :pillowtalk, Pillowtalk.Endpoint, server: true
#
