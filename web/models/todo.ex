defmodule Todos.Todo do
  use Todos.Web, :model
  use Timex.Ecto.Timestamps

  schema "todos" do
    field :title
    field :description

    timestamps
    # field :inserted_at, Timex.Ecto.DateTimeWithTimezone
    # field :updated_at,  Timex.Ecto.DateTimeWithTimezone
  end
end
