ExUnit.start

Mix.Task.run "ecto.create", ~w(-r WeatherApi.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r WeatherApi.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(WeatherApi.Repo)

