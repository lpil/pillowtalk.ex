# Ecto and Databases

We're using PostgreSQL, and interacting with it via the
[Ecto](https://github.com/elixir-lang/ecto) DSL.

The Ecto documentation can be found [here](http://hexdocs.pm/ecto/).

## Usage

Task               | Command
----               | -------
Create migration   | `mix ecto.gen.migration add_foo_to_bar`
Run migration      | `mix ecto.migrate Pillowtalk.Repo`
Rollback migration | `mix ecto.rollback Pillowtalk.Repo`

## Notes

* [Ecto changeset validations
  proposal](https://gist.github.com/josevalim/30d619a608b8f2335187)
