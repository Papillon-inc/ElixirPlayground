# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :toki, TokiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "66uY364MlCWx3agExYAMNNXRGPOUH0wp90lUjoy2cVH+Rousqh8X6woNaHMep4k7",
  render_errors: [view: TokiWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Toki.PubSub,
  live_view: [signing_salt: "0yMWiT7+"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
