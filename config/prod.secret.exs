use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :weather_api, WeatherApi.Endpoint,
  secret_key_base: "EDGUcv7B1xGfQApwC+yo21e5LEvpnRjSCt9BZkXvtQ+r4NIK0QOn4hyGG/2igmcp"

# Configure your database
config :weather_api, WeatherApi.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "weather_api_prod",
  pool_size: 20
