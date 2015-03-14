defmodule Pillowtalk.Operator do
  use Ecto.Model

  schema "operators" do
    field :email, :string
    timestamps
  end
end
