defmodule Pillowtalk.ChatController do
  use Pillowtalk.Web, :controller

  plug :action

  def index(conn, _params) do
    render conn, "index.html"
  end
end
