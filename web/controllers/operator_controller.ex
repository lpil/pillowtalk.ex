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
    operator = operator_by_id(id)

    if operator do
      render conn, "show.html", operator: operator
    else
      not_found conn
    end
  end

  def edit(conn, %{"id" => id}) do
    operator = operator_by_id(id)

    if operator do
      changeset = Operator.changeset(operator)
      render conn, "edit.html", changeset: changeset
    else
      not_found conn
    end
  end

  def update(conn, %{"id" => id, "operator" => params}) do
    changeset = Operator.changeset(operator_by_id(id), params)

    if changeset.valid? do
      operator = Repo.update(changeset)
      redirect conn, to: operator_path(conn, :index)
    else
      render conn, "edit.html", changeset: changeset
    end
  end

  defp operator_by_id(id) do
    query = from o in Operator,
            where: o.id == ^id

    operator = Repo.one(query)
  end

  defp not_found(conn) do
    conn
    |> put_status(404)
    |> text "Not found!"
  end
end
