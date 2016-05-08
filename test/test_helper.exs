ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Infobola.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Infobola.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Infobola.Repo)

