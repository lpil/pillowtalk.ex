defmodule Pillowtalk.Operator do
  use Ecto.Model

  schema "operators" do
    field :email, :string
    timestamps
  end

  def change(operator, params) do
    operator
    |> cast(params, ~w(), ~w(email))
    |> update_change(:email, &String.downcase(&1))
    |> validate_length(:email, 6..50)
    |> validate_format(:email, ~r/^\d+@\d+$/)
    |> validate_unique(:email, on: Pillowtalk.Repo)
  end
end
