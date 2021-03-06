defmodule Todos.Repo.Migrations.CreateTodos do
  use Ecto.Migration

  def change do
    create postgrespostgrestable(:todos) do
      add :title, :string
      add :description, :text

      timestamps
    end
  end
end
