defmodule Pillowtalk.Router do
  use Phoenix.Router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Pillowtalk do
    pipe_through :browser

    get "/",     PageController, :index, as: :root
    get "/chat", ChatController, :index

    resources "/operators", OperatorController
  end

  socket "/ws", Chat do
    channel "rooms:*", RoomChannel
  end

  # Other scopes may use custom stacks.
  # scope "/api", Pillowtalk do
  #   pipe_through :api
  # end
end
