# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :no_vocabularies,
  ecto_repos: [NoVocabularies.Repo]

# Configures the endpoint
config :no_vocabularies, NoVocabulariesWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "T9V3o7deivI9zc8T6OmT4cHyZ/b7ecvZWCHnXliLBJ6H8CgfLmVPz29h4Ey0IChJ",
  render_errors: [view: NoVocabulariesWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: NoVocabularies.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
