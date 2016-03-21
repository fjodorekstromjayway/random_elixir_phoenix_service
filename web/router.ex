defmodule WeatherApi.Router do
  use WeatherApi.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", WeatherApi do
    pipe_through :browser # Use the default browser stack

    get "/",                    PageController, :index
    get "/world",               HelloController, :index
    get "/images",              ImageController, :index
    resources "/users",         User do
      resources "/posts",       PostController
    end
    resources "/reviews",       ReviewController
    resources "/comments",      CommentController, except: [:delete]
  end


  # Other scopes may use custom stacks.
  # scope "/api", WeatherApi do
  #   pipe_through :api
  # end
end
