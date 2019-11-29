# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :liveview_sample, LiveviewSampleWeb.Endpoint,
  live_view: [signing_salt: "N7dTotMJbEi8cXG/Y8O599wRhPUW21FP"],
  url: [host: "localhost"],
  secret_key_base: "wmeidvuX9U/r7bg5I4VKN2NC5bOihQ2pzhUaqKvYI376Pzu7gNWToXE/jMdwq9PU",
  render_errors: [view: LiveviewSampleWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: LiveviewSample.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
