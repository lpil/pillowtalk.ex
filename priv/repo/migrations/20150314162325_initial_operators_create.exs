defmodule Pillowtalk.Repo.Migrations.InitialOperatorsCreate do
  use Ecto.Migration

  def up do
    create table(:operators) do
      add :email, :string, null: false, unique: true
      timestamps
    end
  end

  def down do
    drop table(:operators)
  end
end
