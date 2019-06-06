# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :messaging_api,
  ecto_repos: [MessagingApi.Repo]

# Configures the endpoint
config :messaging_api, MessagingApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "KpRn7RMFrfWtr4kZI4nSfUEROu0xJ74gtNnzml5YCdmzAKXtZSRFAVJbV7zG0ZdM",
  render_errors: [view: MessagingApiWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: MessagingApi.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Guardian config to generate JSON Web Tokens
config :messaging_api, MessagingApi.Guardian,
  issuer: "messaging_api",
  secret_key: "oUmqTyyDh/5yJoNGe2l9ThisIsNotAProdKeyJfww+2SyZ4mW8g9DV2c5ychaVT6"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
