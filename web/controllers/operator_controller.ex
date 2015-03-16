defmodule Pillowtalk.OperatorController do
  use Pillowtalk.Web, :controller

  alias Pillowtalk.Repo
  alias Pillowtalk.Operator

  plug :action

  def index(conn, _params) do
    operators = Repo.all(Operator)

    render conn, "index.html", operators: operators, foo: [1,2,3,4,5]
  end

  def new(conn, _params) do
    changeset = Operator.changeset(%Operator{})
    
    render conn, "new.html", changeset: changeset
  end

  def create(conn, %{"operator" => params}) do
    changeset = Operator.changeset(%Operator{}, params)
    
    if changeset.valid? do
      raise "valid"
    else
      IO.inspect changeset
      raise "not valid"
    end
  end
end
