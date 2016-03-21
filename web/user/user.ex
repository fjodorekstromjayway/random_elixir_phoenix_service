defmodule WeatherApi.User do
  use WeatherApi.Web, :controller

  def index(conn, _params) do
      render conn, "index.html"
  end

  def show(conn, %{"id" => id}) do
    json conn, %{id: id}
  end
end