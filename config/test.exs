use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :messaging_api, MessagingApiWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :messaging_api, MessagingApi.Repo,
  username: "postgres",
  password: "postgres",
  database: "messaging_api_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
