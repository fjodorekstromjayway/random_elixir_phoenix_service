defmodule WeatherApi.HelloController do
    use WeatherApi.Web, :controller

    def index(conn, _params) do
        conn
        |>  put_flash(:info, "Welcome to Fjodors blog")
        |>  put_flash(:error, "Oh oh, something went wrong")
        |>  render("index.html")
    end
end