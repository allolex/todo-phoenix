defmodule Todos.Factory do
  use ExMachina.Ecto, repo: Todos.Repo

  def todo_factory do
    %Todos.Todo{
      title: "Something to do",
      description: "Steps to complete"
    }
  end
end
