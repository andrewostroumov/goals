# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :goals,
  ecto_repos: [Goals.Repo]

# Configures the endpoint
config :goals, Goals.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "b/fCNd1T8pcd/WdUddhgjIJZzWrdk3JdrEt3ChqzwaGCvHaZ2qsKJA+gtmR7OTXO",
  render_errors: [view: Goals.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Goals.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
