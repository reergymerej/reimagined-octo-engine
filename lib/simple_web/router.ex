defmodule SimpleWeb.Router do
  use SimpleWeb, :router

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

  scope "/", SimpleWeb do
    pipe_through :browser

    get "/", PageController, :index
    resources "/items", ItemController
  end

  # Other scopes may use custom stacks.
  # scope "/api", SimpleWeb do
  #   pipe_through :api
  # end
end
