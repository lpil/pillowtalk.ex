defmodule Pillowtalk.Operator do
  use Ecto.Model

  schema "operators" do
    field :email, :string
    field :active, :boolean, default: true
    timestamps
  end

  def changeset(operator, params \\ nil) do
    operator
    |> cast(params, ~w(), ~w(active email))
    |> update_change(:email, &String.downcase(&1))
    |> validate_length(:email, 6..50)
    |> validate_format(:email, ~r/^[\w\.\+.]+@[\w\.]+$/)
    |> validate_unique(:email, on: Pillowtalk.Repo)
  end
end
