defmodule Pillowtalk.OperatorController do
  use Pillowtalk.Web, :controller

  import Ecto.Query

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
      operator = Repo.insert(changeset)
      redirect conn, to: operator_path(conn, :index)
    else
      render conn, "new.html", changeset: changeset
    end
  end

  def show(conn, %{"id" => id}) do
    query = from o in Operator,
            where: o.id == ^id
    operator = Repo.one(query)

    if operator do
      render conn, "show.html", operator: operator
    else
      conn
      |> put_status(404)
      |> text "Not found!" 
    end
  end
end
