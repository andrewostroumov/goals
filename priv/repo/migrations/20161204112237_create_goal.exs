defmodule Goals.Repo.Migrations.CreateGoal do
  use Ecto.Migration

  def change do
    create table(:goals) do
      add :name, :string

      timestamps()
    end

  end
end
