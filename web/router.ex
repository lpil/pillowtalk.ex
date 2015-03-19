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
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index, as: :root

    resources "/operators", OperatorController, only: [
      :index,
      :edit,
      :new,
      :show,
      :create,
      :update,
      :delete,
    ]
  end

  # Other scopes may use custom stacks.
  # scope "/api", Pillowtalk do
  #   pipe_through :api
  # end
end
