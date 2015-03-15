defmodule Pillowtalk.OperatorController do
  use Pillowtalk.Web, :controller

  alias Pillowtalk.Repo
  alias Pillowtalk.Operator

  plug :action

  def index(conn, _params) do
    operators = Repo.all(Operator)

    render conn, "index.html", operators: operators, foo: [1,2,3,4,5]
  end
end
