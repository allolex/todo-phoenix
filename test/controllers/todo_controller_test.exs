# require IEx

defmodule Todos.TodoControllerTest do
  use Todos.ConnCase

  test "#index renders a list of todos" do
    conn = build_conn()
    todo = insert(:todo)

    conn = get conn, todo_path(conn, :index)

    # IEx.pry

    {:ok, insert} = Timex.format(todo.inserted_at, "{ISO:Extended:Z}")
    {:ok, update} = Timex.format(todo.updated_at, "{ISO:Extended:Z}")

    assert json_response(conn, 200) == %{
      "todos" => [%{
        "title"       => todo.title,
        "description" => todo.description,
        "inserted_at" => insert,
        "updated_at" => update
      }]
    }
  end
end
