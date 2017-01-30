# Code notes

Here are my notes for the tutorial found here:

https://robots.thoughtbot.com/building-a-phoenix-json-api

## The datetime libraries are confusing

Specifically, I had trouble getting the timestamps to output as ISO 8601
strings in the controller test because the instructions in [Thoughbot's
tutorial](https://robots.thoughtbot.com/building-a-phoenix-json-api) appear to
be out of date. (It's otherwise pretty brilliant.)

By default, Phoenix uses **Ecto.Datetime**, but the struct I was getting back
from `todo.inserted_at` could not be used as an argument to the
`Ecto.DateTime.to_iso8601` function. 

There's a load of advice (and opinions) about how do deal with date conversions
and formatting. I ran across at least four libraries:

- DateTime
- Ecto.Datetime
- Calendar + Calecto
- Timex + Timex.Ecto

I ended up using the last combination—**Timex** and **Timex.Ecto**—because there seemed to be clear support
for ISO 8601 string output.

## Really don't forget to `import Todo.Factory` in **Todos.ConnCase**

You put it inside the `quote` block.

If you forget to import `Todo.Factory`, the controller test won't be able to find `insert/1`.

## Debug with `IEx.pry`

Rubyists will be happy to know there is a **pry**.

I left the code to make this work in `todo_controller.ex` and in the `Makefile`.

Here's a tutorial for getting **IEX.pry** to work.

https://medium.com/@diamondgfx/debugging-phoenix-with-iex-pry-5417256e1d11#.58y9ljhhv

